########################################################################
oltp_point_select.lua + MySQL tests
########################################################################

  $ . $SBTEST_INCDIR/mysql_common.sh
  $ OLTP_SCRIPT_PATH=${SBTEST_SCRIPTDIR}/oltp_point_select.lua
  $ . $SBTEST_INCDIR/script_oltp_common.sh
  sysbench *.* * (glob)

  Creating table 'SBTEST1'...
  Inserting 10000 records into 'SBTEST1'
  Creating a secondary index on 'SBTEST1'...
  Creating table 'SBTEST2'...
  Inserting 10000 records into 'SBTEST2'
  Creating a secondary index on 'SBTEST2'...
  Creating table 'SBTEST3'...
  Inserting 10000 records into 'SBTEST3'
  Creating a secondary index on 'SBTEST3'...
  Creating table 'SBTEST4'...
  Inserting 10000 records into 'SBTEST4'
  Creating a secondary index on 'SBTEST4'...
  Creating table 'SBTEST5'...
  Inserting 10000 records into 'SBTEST5'
  Creating a secondary index on 'SBTEST5'...
  Creating table 'SBTEST6'...
  Inserting 10000 records into 'SBTEST6'
  Creating a secondary index on 'SBTEST6'...
  Creating table 'SBTEST7'...
  Inserting 10000 records into 'SBTEST7'
  Creating a secondary index on 'SBTEST7'...
  Creating table 'SBTEST8'...
  Inserting 10000 records into 'SBTEST8'
  Creating a secondary index on 'SBTEST8'...
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
  *************************** 1. row ***************************
  SBTEST2
  CREATE TABLE `SBTEST2` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_2` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  *************************** 1. row ***************************
  SBTEST3
  CREATE TABLE `SBTEST3` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_3` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  *************************** 1. row ***************************
  SBTEST4
  CREATE TABLE `SBTEST4` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_4` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  *************************** 1. row ***************************
  SBTEST5
  CREATE TABLE `SBTEST5` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_5` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  *************************** 1. row ***************************
  SBTEST6
  CREATE TABLE `SBTEST6` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_6` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  *************************** 1. row ***************************
  SBTEST7
  CREATE TABLE `SBTEST7` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_7` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  *************************** 1. row ***************************
  SBTEST8
  CREATE TABLE `SBTEST8` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_8` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST9' doesn't exist
  sysbench * (glob)

  Prewarming table SBTEST1
  Prewarming table SBTEST2
  Prewarming table SBTEST3
  Prewarming table SBTEST4
  Prewarming table SBTEST5
  Prewarming table SBTEST6
  Prewarming table SBTEST7
  Prewarming table SBTEST8
  sysbench *.* * (glob)

  Dropping table 'SBTEST1'...
  Dropping table 'SBTEST2'...
  Dropping table 'SBTEST3'...
  Dropping table 'SBTEST4'...
  Dropping table 'SBTEST5'...
  Dropping table 'SBTEST6'...
  Dropping table 'SBTEST7'...
  Dropping table 'SBTEST8'...
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
  *************************** 1. row ***************************
  SBTEST2
  CREATE TABLE `SBTEST2` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_2` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  *************************** 1. row ***************************
  SBTEST3
  CREATE TABLE `SBTEST3` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_3` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  *************************** 1. row ***************************
  SBTEST4
  CREATE TABLE `SBTEST4` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_4` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  *************************** 1. row ***************************
  SBTEST5
  CREATE TABLE `SBTEST5` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_5` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  *************************** 1. row ***************************
  SBTEST6
  CREATE TABLE `SBTEST6` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_6` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  *************************** 1. row ***************************
  SBTEST7
  CREATE TABLE `SBTEST7` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_7` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  *************************** 1. row ***************************
  SBTEST8
  CREATE TABLE `SBTEST8` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`),
    KEY `k_8` (`k`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST9' doesn't exist
  sysbench *.* * (glob)

  Running the test with following options:
  Number of threads: 2
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

  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST1' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST2' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST3' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST4' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST5' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST6' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST7' doesn't exist
  ERROR 1146 (42S02) at line 1: Table 'SBTEST.SBTEST8' doesn't exist
  # Test --create-secondary=off
  sysbench * (glob)

  Creating table 'SBTEST1'...
  Inserting 10000 records into 'SBTEST1'
  *************************** 1. row ***************************
  SBTEST1
  CREATE TABLE `SBTEST1` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `k` int(11) NOT NULL DEFAULT '0',
    `c` char(120)* NOT NULL DEFAULT '', (glob)
    `pad` char(60)* NOT NULL DEFAULT '', (glob)
    PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=* (glob)
  sysbench * (glob)

  Dropping table 'SBTEST1'...
  # Test --auto-inc=off
  Creating table 'SBTEST1'...
  Inserting 10000 records into 'SBTEST1'
  Creating a secondary index on 'SBTEST1'...
  Dropping table 'SBTEST1'...
