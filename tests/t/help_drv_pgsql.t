Skip test if the PostgreSQL driver is not available.

  $ if [ -z "$SBTEST_HAS_PGSQL" ]
  > then
  >   exit 80
  > fi

  $ sysbench --help | sed -n '/pgsql options:/,/^$/p'
  pgsql options:
    --pgsql-host=STRING     PostgreSQL server host [localhost]
    --pgsql-port=N          PostgreSQL server port [5432]
    --pgsql-user=STRING     PostgreSQL user [SBTEST]
    --pgsql-password=STRING PostgreSQL password []
    --pgsql-db=STRING       PostgreSQL database name [SBTEST]

