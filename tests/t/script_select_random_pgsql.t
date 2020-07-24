########################################################################
select_random_*.lua + PostgreSQL tests
########################################################################

  $ . $SBTEST_INCDIR/pgsql_common.sh
  $ . $SBTEST_INCDIR/script_select_random_common.sh
  sysbench * (glob)

  Creating table 'SBTEST1'...
  Inserting 10000 records into 'SBTEST1'
  Creating a secondary index on 'SBTEST1'...
                              Table "public.SBTEST1"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST1_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_1 ON SBTEST1 USING btree (k)
   CREATE UNIQUE INDEX SBTEST1_pkey ON SBTEST1 USING btree (id)

  Did not find any relation named "SBTEST2".
  Did not find any relation named "SBTEST3".
  Did not find any relation named "SBTEST4".
  Did not find any relation named "SBTEST5".
  Did not find any relation named "SBTEST6".
  Did not find any relation named "SBTEST7".
  Did not find any relation named "SBTEST8".
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
  Did not find any relation named "SBTEST1".
  Did not find any relation named "SBTEST2".
  Did not find any relation named "SBTEST3".
  Did not find any relation named "SBTEST4".
  Did not find any relation named "SBTEST5".
  Did not find any relation named "SBTEST6".
  Did not find any relation named "SBTEST7".
  Did not find any relation named "SBTEST8".
  sysbench * (glob)

  Creating table 'SBTEST1'...
  Inserting 10000 records into 'SBTEST1'
  Creating a secondary index on 'SBTEST1'...
                              Table "public.SBTEST1"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST1_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_1 ON SBTEST1 USING btree (k)
   CREATE UNIQUE INDEX SBTEST1_pkey ON SBTEST1 USING btree (id)

  Did not find any relation named "SBTEST2".
  Did not find any relation named "SBTEST3".
  Did not find any relation named "SBTEST4".
  Did not find any relation named "SBTEST5".
  Did not find any relation named "SBTEST6".
  Did not find any relation named "SBTEST7".
  Did not find any relation named "SBTEST8".
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
  Did not find any relation named "SBTEST1".
  Did not find any relation named "SBTEST2".
  Did not find any relation named "SBTEST3".
  Did not find any relation named "SBTEST4".
  Did not find any relation named "SBTEST5".
  Did not find any relation named "SBTEST6".
  Did not find any relation named "SBTEST7".
  Did not find any relation named "SBTEST8".
