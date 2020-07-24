########################################################################
oltp_delete.lua + PostgreSQL tests
########################################################################

  $ . $SBTEST_INCDIR/pgsql_common.sh
  $ OLTP_SCRIPT_PATH=${SBTEST_SCRIPTDIR}/oltp_delete.lua
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

                              Table "public.SBTEST2"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST2_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_2 ON SBTEST2 USING btree (k)
   CREATE UNIQUE INDEX SBTEST2_pkey ON SBTEST2 USING btree (id)

                              Table "public.SBTEST3"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST3_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_3 ON SBTEST3 USING btree (k)
   CREATE UNIQUE INDEX SBTEST3_pkey ON SBTEST3 USING btree (id)

                              Table "public.SBTEST4"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST4_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_4 ON SBTEST4 USING btree (k)
   CREATE UNIQUE INDEX SBTEST4_pkey ON SBTEST4 USING btree (id)

                              Table "public.SBTEST5"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST5_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_5 ON SBTEST5 USING btree (k)
   CREATE UNIQUE INDEX SBTEST5_pkey ON SBTEST5 USING btree (id)

                              Table "public.SBTEST6"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST6_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_6 ON SBTEST6 USING btree (k)
   CREATE UNIQUE INDEX SBTEST6_pkey ON SBTEST6 USING btree (id)

                              Table "public.SBTEST7"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST7_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_7 ON SBTEST7 USING btree (k)
   CREATE UNIQUE INDEX SBTEST7_pkey ON SBTEST7 USING btree (id)

                              Table "public.SBTEST8"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST8_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_8 ON SBTEST8 USING btree (k)
   CREATE UNIQUE INDEX SBTEST8_pkey ON SBTEST8 USING btree (id)

  Did not find any relation named "SBTEST9".
  sysbench *.* * (glob)

  FATAL: *: prewarm is currently MySQL only (glob)
  sysbench *.* * (glob)

  Dropping table 'SBTEST1'...
  Dropping table 'SBTEST2'...
  Dropping table 'SBTEST3'...
  Dropping table 'SBTEST4'...
  Dropping table 'SBTEST5'...
  Dropping table 'SBTEST6'...
  Dropping table 'SBTEST7'...
  Dropping table 'SBTEST8'...
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

                              Table "public.SBTEST2"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST2_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_2 ON SBTEST2 USING btree (k)
   CREATE UNIQUE INDEX SBTEST2_pkey ON SBTEST2 USING btree (id)

                              Table "public.SBTEST3"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST3_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_3 ON SBTEST3 USING btree (k)
   CREATE UNIQUE INDEX SBTEST3_pkey ON SBTEST3 USING btree (id)

                              Table "public.SBTEST4"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST4_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_4 ON SBTEST4 USING btree (k)
   CREATE UNIQUE INDEX SBTEST4_pkey ON SBTEST4 USING btree (id)

                              Table "public.SBTEST5"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST5_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_5 ON SBTEST5 USING btree (k)
   CREATE UNIQUE INDEX SBTEST5_pkey ON SBTEST5 USING btree (id)

                              Table "public.SBTEST6"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST6_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_6 ON SBTEST6 USING btree (k)
   CREATE UNIQUE INDEX SBTEST6_pkey ON SBTEST6 USING btree (id)

                              Table "public.SBTEST7"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST7_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_7 ON SBTEST7 USING btree (k)
   CREATE UNIQUE INDEX SBTEST7_pkey ON SBTEST7 USING btree (id)

                              Table "public.SBTEST8"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST8_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE INDEX k_8 ON SBTEST8 USING btree (k)
   CREATE UNIQUE INDEX SBTEST8_pkey ON SBTEST8 USING btree (id)

  Did not find any relation named "SBTEST9".
  sysbench *.* * (glob)

  Running the test with following options:
  Number of threads: 2
  Initializing random number generator from current time


  Initializing worker threads...

  Threads started!

  SQL statistics:
      queries performed:
          read:                            0
          write:                           * (glob)
          other:                           * (glob)
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

  Did not find any relation named "SBTEST1".
  Did not find any relation named "SBTEST2".
  Did not find any relation named "SBTEST3".
  Did not find any relation named "SBTEST4".
  Did not find any relation named "SBTEST5".
  Did not find any relation named "SBTEST6".
  Did not find any relation named "SBTEST7".
  Did not find any relation named "SBTEST8".
  # Test --create-secondary=off
  sysbench * (glob)

  Creating table 'SBTEST1'...
  Inserting 10000 records into 'SBTEST1'
                              Table "public.SBTEST1"
   Column |      Type      |                      Modifiers                       | Storage  | Stats target | Description
  --------+----------------+------------------------------------------------------+----------+--------------+-------------
   id     | integer        | not null default nextval('SBTEST1_id_seq'::regclass) | plain    |              |
   k      | integer        | not null default 0                                   | plain    |              |
   c      | character(120) | not null default ''::bpchar                          | extended |              |
   pad    | character(60)  | not null default ''::bpchar                          | extended |              |

  Indexes:
   CREATE UNIQUE INDEX SBTEST1_pkey ON SBTEST1 USING btree (id)

  sysbench * (glob)

  Dropping table 'SBTEST1'...
  # Test --auto-inc=off
  Creating table 'SBTEST1'...
  Inserting 10000 records into 'SBTEST1'
  Creating a secondary index on 'SBTEST1'...
  Dropping table 'SBTEST1'...
