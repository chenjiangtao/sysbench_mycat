########################################################################
bulk_insert.lua + MySQL tests
########################################################################

  $ . $SBTEST_INCDIR/mysql_common.sh
  $ . $SBTEST_INCDIR/script_bulk_insert_common.sh
  Creating table 'SBTEST1'...
  Creating table 'SBTEST2'...
  *************************** 1. row ***************************
  SBTEST1
  CREATE TABLE `SBTEST1` (
    `id` int(11) NOT NULL,
    `k` int(11) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
  ) ENGINE=InnoDB * (glob)
  *************************** 1. row ***************************
  SBTEST2
  CREATE TABLE `SBTEST2` (
    `id` int(11) NOT NULL,
    `k` int(11) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
  ) ENGINE=InnoDB * (glob)
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST3' doesn't exist
  sysbench * (glob)

  Running the test with following options:
  Number of threads: 2
  Initializing random number generator from current time


  Initializing worker threads...

  Threads started!

  SQL statistics:
      queries performed:
          read:                            0
          write:                           [12] (re)
          other:                           0
          total:                           [12] (re)
      transactions:                        100    (* per sec.) (glob)
      queries:                             [12]      \(.* per sec.\) (re)
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

  Dropping table 'SBTEST1'...
  Dropping table 'SBTEST2'...
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST1' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST2' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST3' doesn't exist
