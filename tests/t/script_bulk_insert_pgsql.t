########################################################################
bulk_insert.lua + PostgreSQL tests
########################################################################

  $ . $SBTEST_INCDIR/pgsql_common.sh
  $ . $SBTEST_INCDIR/script_bulk_insert_common.sh
  Creating table 'SBTEST1'...
  Creating table 'SBTEST2'...
                              Table "public.SBTEST1"
   Column |  Type   |     Modifiers      | Storage | Stats target | Description
  --------+---------+--------------------+---------+--------------+-------------
   id     | integer | not null           | plain   |              |
   k      | integer | not null default 0 | plain   |              |

  Indexes:
   CREATE UNIQUE INDEX SBTEST1_pkey ON SBTEST1 USING btree (id)

                              Table "public.SBTEST2"
   Column |  Type   |     Modifiers      | Storage | Stats target | Description
  --------+---------+--------------------+---------+--------------+-------------
   id     | integer | not null           | plain   |              |
   k      | integer | not null default 0 | plain   |              |

  Indexes:
   CREATE UNIQUE INDEX SBTEST2_pkey ON SBTEST2 USING btree (id)

  Did not find any relation named "SBTEST3".
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
  Did not find any relation named "SBTEST1".
  Did not find any relation named "SBTEST2".
  Did not find any relation named "SBTEST3".
