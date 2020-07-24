########################################################################
select_random_*.lua + MySQL tests
########################################################################

  $ . $SBTEST_INCDIR/mysql_common.sh
  $ . $SBTEST_INCDIR/script_select_random_common.sh
  sysbench * (glob)

  Creating table 'SBTEST1'...
  Inserting 10000 records into 'SBTEST1'
  Creating a secondary index on 'SBTEST1'...
  *************************** 1. row ***************************
  SBTEST1
  CREATE TABLE `SBTEST1` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_1` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST2' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST3' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST4' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST5' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST6' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST7' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST8' doesn't exist
  sysbench * (glob)

  Running the test with following options:
  Number of threads: 1
  Initializing random number generator from current time


  Initializing worker threads...

  Threads started!

  SQL statistics:
      queries performed:
          read:                            100
          write:                           0
          other:                           0
          total:                           100
      transactions:                        100    (* per sec.) (glob)
      queries:                             100    (* per sec.) (glob)
      ignored errors:                      0      (0.00 per sec.)
      reconnects:                          0      (0.00 per sec.)

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
      events (avg/stddev):* (glob)
      execution time (avg/stddev):* (glob)

  sysbench * (glob)

  Dropping table 'SBTEST1'...
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST1' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST2' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST3' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST4' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST5' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST6' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST7' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST8' doesn't exist
  sysbench * (glob)

  Creating table 'SBTEST1'...
  Inserting 10000 records into 'SBTEST1'
  Creating a secondary index on 'SBTEST1'...
  *************************** 1. row ***************************
  SBTEST1
  CREATE TABLE `SBTEST1` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_1` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST2' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST3' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST4' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST5' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST6' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST7' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST8' doesn't exist
  sysbench * (glob)

  Running the test with following options:
  Number of threads: 1
  Initializing random number generator from current time


  Initializing worker threads...

  Threads started!

  SQL statistics:
      queries performed:
          read:                            100
          write:                           0
          other:                           0
          total:                           100
      transactions:                        100    (* per sec.) (glob)
      queries:                             100    (* per sec.) (glob)
      ignored errors:                      0      (0.00 per sec.)
      reconnects:                          0      (0.00 per sec.)

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
      events (avg/stddev):* (glob)
      execution time (avg/stddev):* (glob)

  sysbench * (glob)

  Dropping table 'SBTEST1'...
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST1' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST2' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST3' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST4' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST5' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST6' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST7' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST8' doesn't exist
