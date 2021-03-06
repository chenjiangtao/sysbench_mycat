#!/usr/bin/env bash
#
################################################################################
# Common code for OLTP tests
#
# Expects the following variables and callback functions to be defined by the
# caller:
#
#   DB_DRIVER_ARGS -- extra driver-specific arguments to pass to sysbench
#   OLTP_SCRIPT_PATH -- path to the script file to execute
#   SB_EXTRA_ARGS -- optional variable to specify extra sysbench arguments
#
#   db_show_table() -- called with a single argument to dump a specified table
#                      schema
################################################################################

set -eu

SB_EXTRA_ARGS=${SB_EXTRA_ARGS:-}

# Test single-threaded prepare/prewarm/cleanup output

ARGS="${OLTP_SCRIPT_PATH} ${DB_DRIVER_ARGS} --tables=8 --threads=1 ${SB_EXTRA_ARGS}"
sysbench $ARGS prepare

db_show_table SBTEST1
db_show_table SBTEST2
db_show_table SBTEST3
db_show_table SBTEST4
db_show_table SBTEST5
db_show_table SBTEST6
db_show_table SBTEST7
db_show_table SBTEST8
db_show_table SBTEST9 || true # Error on non-existing table

sysbench $ARGS prewarm || true # MySQL-only
sysbench $ARGS cleanup

# Test parallel prepare/prewarm/cleanup. Parallelism may result in
# non-deterministic output, so we redirect it to /dev/null

ARGS="${OLTP_SCRIPT_PATH} ${DB_DRIVER_ARGS} --tables=8 --threads=2 ${SB_EXTRA_ARGS}"

sysbench $ARGS prepare >/dev/null

db_show_table SBTEST1
db_show_table SBTEST2
db_show_table SBTEST3
db_show_table SBTEST4
db_show_table SBTEST5
db_show_table SBTEST6
db_show_table SBTEST7
db_show_table SBTEST8
db_show_table SBTEST9 || true # Error on non-existing table

sysbench $ARGS prewarm >/dev/null || true # MySQL only

sysbench --events=100 $ARGS run

sysbench $ARGS cleanup >/dev/null

db_show_table SBTEST1 || true # Error on non-existing table
db_show_table SBTEST2 || true # Error on non-existing table
db_show_table SBTEST3 || true # Error on non-existing table
db_show_table SBTEST4 || true # Error on non-existing table
db_show_table SBTEST5 || true # Error on non-existing table
db_show_table SBTEST6 || true # Error on non-existing table
db_show_table SBTEST7 || true # Error on non-existing table
db_show_table SBTEST8 || true # Error on non-existing table

echo "# Test --create-secondary=off"
ARGS="${OLTP_SCRIPT_PATH} ${DB_DRIVER_ARGS} ${SB_EXTRA_ARGS} --tables=1"

sysbench --create-secondary=off $ARGS prepare

db_show_table SBTEST1

sysbench $ARGS cleanup

echo "# Test --auto-inc=off"

ARGS="$ARGS --auto-inc=off --verbosity=1"

sysbench $ARGS prepare
sysbench $ARGS run
sysbench $ARGS cleanup
