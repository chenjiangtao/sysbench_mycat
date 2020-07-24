#!/usr/bin/env bash
#
################################################################################
# Common code for legacy OLTP tests
#
# Expects the following variables and callback functions to be defined by the
# caller:
#
#   DB_DRIVER_ARGS -- extra driver-specific arguments to pass to sysbench
#
#   db_show_table() -- called with a single argument to dump a specified table
#                      schema
################################################################################

set -eu

ARGS="--test=${SBTEST_INCDIR}/oltp_legacy/oltp.lua $DB_DRIVER_ARGS --oltp-tables-count=8"

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

sysbench $ARGS --max-requests=100 --num-threads=2 run

sysbench $ARGS cleanup

db_show_table SBTEST1 || true # Error on non-existing table
db_show_table SBTEST2 || true # Error on non-existing table
db_show_table SBTEST3 || true # Error on non-existing table
db_show_table SBTEST4 || true # Error on non-existing table
db_show_table SBTEST5 || true # Error on non-existing table
db_show_table SBTEST6 || true # Error on non-existing table
db_show_table SBTEST7 || true # Error on non-existing table
db_show_table SBTEST8 || true # Error on non-existing table

# Test --oltp-create-secondary=off
ARGS="--test=${SBTEST_INCDIR}/oltp_legacy/oltp.lua $DB_DRIVER_ARGS --oltp-tables-count=1"

sysbench $ARGS --oltp-create-secondary=off prepare

db_show_table SBTEST1

sysbench $ARGS cleanup
