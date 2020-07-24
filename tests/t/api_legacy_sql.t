########################################################################
Legacy SQL Lua API tests
########################################################################

  $ if [ -z "${SBTEST_MYSQL_ARGS:-}" ]
  > then
  >   exit 80
  > fi

  $ SB_ARGS="--verbosity=1 --max-requests=1 --db-driver=mysql $SBTEST_MYSQL_ARGS --test=$CRAMTMP/api_legacy_sql.lua"
  $ cat >$CRAMTMP/api_legacy_sql.lua <<EOF
  > function event(thread_id)
  >   db_query("CREATE TABLE t(a INT)")
  >
  >   db_bulk_insert_init("INSERT INTO t VALUES")
  >   for i = 1,100 do
  >     db_bulk_insert_next(string.format("(%d)", i))
  >   end
  >   db_bulk_insert_done()
  >
  >   db_connect()
  >   db_query("SELECT 1")
  >   db_disconnect()
  >   db_query("SELECT 1")
  >   db_connect()
  >
  >   local stmt = db_prepare("UPDATE t SET a = a + ?")
  >   db_bind_param(stmt, {100})
  >   rs = db_execute(stmt)
  >   db_store_results(rs)
  >   db_free_results(rs)
  >   db_close(stmt)
  >
  >   print("DB_ERROR_NONE = " .. DB_ERROR_NONE)
  >   print("DB_ERROR_RESTART_TRANSACTION = " .. DB_ERROR_RESTART_TRANSACTION)
  >   print("DB_ERROR_FAILED = " .. DB_ERROR_FAILED)
  > end
  > EOF

  $ mysql -uroot SBTEST -Nse "DROP TABLE IF EXISTS t"

  $ sysbench $SB_ARGS run
  WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
  WARNING: --max-requests is deprecated, use --events instead
  DB_ERROR_NONE = [0-9] (re)
  DB_ERROR_RESTART_TRANSACTION = [0-9] (re)
  DB_ERROR_FAILED = [0-9] (re)

  $ mysql -uroot SBTEST -Nse "SHOW CREATE TABLE t\G"
  *************************** 1. row ***************************
  t
  CREATE TABLE `t` (
    `a` int(11) DEFAULT NULL
  ) * (glob)

  $ mysql -uroot SBTEST -Nse "SELECT COUNT(DISTINCT a) FROM t"
  100

  $ mysql -uroot SBTEST -Nse "SELECT MIN(a), MAX(a) FROM t\G"
  *************************** 1. row ***************************
  101
  200

  $ mysql -uroot SBTEST -Nse "DROP TABLE t"

  $ function db_show_table() {
  >   mysql -uroot SBTEST -Nse "SHOW CREATE TABLE $1\G"
  > }

  $ DB_DRIVER_ARGS="--db-driver=mysql --mysql-table-engine=myisam $SBTEST_MYSQL_ARGS"
  $ . $SBTEST_INCDIR/script_oltp_legacy_common.sh
  WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
  sysbench *.* * (glob)

  Creating table 'SBTEST1'...
  Inserting 10000 records into 'SBTEST1'
  Creating secondary indexes on 'SBTEST1'...
  Creating table 'SBTEST2'...
  Inserting 10000 records into 'SBTEST2'
  Creating secondary indexes on 'SBTEST2'...
  Creating table 'SBTEST3'...
  Inserting 10000 records into 'SBTEST3'
  Creating secondary indexes on 'SBTEST3'...
  Creating table 'SBTEST4'...
  Inserting 10000 records into 'SBTEST4'
  Creating secondary indexes on 'SBTEST4'...
  Creating table 'SBTEST5'...
  Inserting 10000 records into 'SBTEST5'
  Creating secondary indexes on 'SBTEST5'...
  Creating table 'SBTEST6'...
  Inserting 10000 records into 'SBTEST6'
  Creating secondary indexes on 'SBTEST6'...
  Creating table 'SBTEST7'...
  Inserting 10000 records into 'SBTEST7'
  Creating secondary indexes on 'SBTEST7'...
  Creating table 'SBTEST8'...
  Inserting 10000 records into 'SBTEST8'
  Creating secondary indexes on 'SBTEST8'...
  *************************** 1. row ***************************
  SBTEST1
  CREATE TABLE `SBTEST1` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_1` (`k`)
  ) ENGINE=MyISAM AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST2
  CREATE TABLE `SBTEST2` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_2` (`k`)
  ) ENGINE=MyISAM AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST3
  CREATE TABLE `SBTEST3` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_3` (`k`)
  ) ENGINE=MyISAM AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST4
  CREATE TABLE `SBTEST4` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_4` (`k`)
  ) ENGINE=MyISAM AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST5
  CREATE TABLE `SBTEST5` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_5` (`k`)
  ) ENGINE=MyISAM AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST6
  CREATE TABLE `SBTEST6` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_6` (`k`)
  ) ENGINE=MyISAM AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST7
  CREATE TABLE `SBTEST7` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_7` (`k`)
  ) ENGINE=MyISAM AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST8
  CREATE TABLE `SBTEST8` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_8` (`k`)
  ) ENGINE=MyISAM AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST9' doesn't exist
  WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
  WARNING: --num-threads is deprecated, use --threads instead
  WARNING: --max-requests is deprecated, use --events instead
  sysbench *.* * (glob)

  Running the test with following options:
  Number of threads: 2
  Initializing random number generator from current time


  Initializing worker threads...

  Threads started!

  SQL statistics:
      queries performed:
          read:                            1400
          write:                           400
          other:                           200
          total:                           2000
      transactions:                        100    (* per sec.) (glob)
      queries:                             2000   (* per sec.) (glob)
      ignored errors:                      0      (* per sec.) (glob)
      reconnects:                          0      (* per sec.) (glob)

  General statistics:
      total time:                          *s (glob)
      total number of events:              100

  Latency (ms):
           min:                              *.* (glob)
           avg:                              *.* (glob)
           max:                              *.* (glob)
           95th percentile:         *.* (glob)
           sum: *.* (glob)

  Threads fairness:
      events (avg/stddev):           */* (glob)
      execution time (avg/stddev):   */* (glob)

  WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
  sysbench *.* * (glob)

  Dropping table 'SBTEST1'...
  Dropping table 'SBTEST2'...
  Dropping table 'SBTEST3'...
  Dropping table 'SBTEST4'...
  Dropping table 'SBTEST5'...
  Dropping table 'SBTEST6'...
  Dropping table 'SBTEST7'...
  Dropping table 'SBTEST8'...
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST1' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST2' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST3' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST4' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST5' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST6' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST7' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST8' doesn't exist
  WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
  sysbench * (glob)

  Creating table 'SBTEST1'...
  Inserting 10000 records into 'SBTEST1'
  *************************** 1. row ***************************
  SBTEST1
  CREATE TABLE `SBTEST1` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`)
  ) ENGINE=MyISAM AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
  sysbench * (glob)

  Dropping table 'SBTEST1'...

  $ DB_DRIVER_ARGS="--db-driver=mysql --mysql-table-engine=innodb $SBTEST_MYSQL_ARGS"
  $ . $SBTEST_INCDIR/script_oltp_legacy_common.sh
  WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
  sysbench *.* * (glob)

  Creating table 'SBTEST1'...
  Inserting 10000 records into 'SBTEST1'
  Creating secondary indexes on 'SBTEST1'...
  Creating table 'SBTEST2'...
  Inserting 10000 records into 'SBTEST2'
  Creating secondary indexes on 'SBTEST2'...
  Creating table 'SBTEST3'...
  Inserting 10000 records into 'SBTEST3'
  Creating secondary indexes on 'SBTEST3'...
  Creating table 'SBTEST4'...
  Inserting 10000 records into 'SBTEST4'
  Creating secondary indexes on 'SBTEST4'...
  Creating table 'SBTEST5'...
  Inserting 10000 records into 'SBTEST5'
  Creating secondary indexes on 'SBTEST5'...
  Creating table 'SBTEST6'...
  Inserting 10000 records into 'SBTEST6'
  Creating secondary indexes on 'SBTEST6'...
  Creating table 'SBTEST7'...
  Inserting 10000 records into 'SBTEST7'
  Creating secondary indexes on 'SBTEST7'...
  Creating table 'SBTEST8'...
  Inserting 10000 records into 'SBTEST8'
  Creating secondary indexes on 'SBTEST8'...
  *************************** 1. row ***************************
  SBTEST1
  CREATE TABLE `SBTEST1` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_1` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST2
  CREATE TABLE `SBTEST2` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_2` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST3
  CREATE TABLE `SBTEST3` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_3` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST4
  CREATE TABLE `SBTEST4` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_4` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST5
  CREATE TABLE `SBTEST5` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_5` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST6
  CREATE TABLE `SBTEST6` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_6` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST7
  CREATE TABLE `SBTEST7` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_7` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  *************************** 1. row ***************************
  SBTEST8
  CREATE TABLE `SBTEST8` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_8` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST9' doesn't exist
  WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
  WARNING: --num-threads is deprecated, use --threads instead
  WARNING: --max-requests is deprecated, use --events instead
  sysbench *.* * (glob)

  Running the test with following options:
  Number of threads: 2
  Initializing random number generator from current time


  Initializing worker threads...

  Threads started!

  SQL statistics:
      queries performed:
          read:                            1400
          write:                           400
          other:                           200
          total:                           2000
      transactions:                        100    (* per sec.) (glob)
      queries:                             2000   (* per sec.) (glob)
      ignored errors:                      0      (* per sec.) (glob)
      reconnects:                          0      (* per sec.) (glob)

  General statistics:
      total time:                          *s (glob)
      total number of events:              100

  Latency (ms):
           min:                              *.* (glob)
           avg:                              *.* (glob)
           max:                              *.* (glob)
           95th percentile:         *.* (glob)
           sum: *.* (glob)

  Threads fairness:
      events (avg/stddev):           */* (glob)
      execution time (avg/stddev):   */* (glob)

  WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
  sysbench *.* * (glob)

  Dropping table 'SBTEST1'...
  Dropping table 'SBTEST2'...
  Dropping table 'SBTEST3'...
  Dropping table 'SBTEST4'...
  Dropping table 'SBTEST5'...
  Dropping table 'SBTEST6'...
  Dropping table 'SBTEST7'...
  Dropping table 'SBTEST8'...
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST1' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST2' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST3' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST4' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST5' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST6' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST7' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST8' doesn't exist
  WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
  sysbench * (glob)

  Creating table 'SBTEST1'...
  Inserting 10000 records into 'SBTEST1'
  *************************** 1. row ***************************
  SBTEST1
  CREATE TABLE `SBTEST1` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `k` int(10) unsigned NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* MAX_ROWS=1000000 (glob)
  WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
  sysbench * (glob)

  Dropping table 'SBTEST1'...

