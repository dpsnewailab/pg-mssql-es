# Postgresql - MS-SQL - Elasticsearch pipeline

Install elasticsearch, postgresql, mssql, logstash, kibana

```
docker-compose up -d 
```

Then, initial postgresql + mssql schema 

for psql

````
docker-compose exec postgres bash -c 'psql -U $POSTGRES_USER -w -d sa -f init_pg.sql'
````

Verify

````
docker-compose exec postgres bash -c 'psql -U $POSTGRES_USER -w -d sa -c "select * from my_pg_table;"'
````

and create mssql empty table
````
docker-compose exec mssql bash -c '/opt/mssql-tools/bin/sqlcmd -U sa -P "$SA_PASSWORD" -i init_mssql.sql'
````

Now, run logstash

```docker-compose -f logstash.yml```

Verify data on elasticsearch 

```curl localhost:9200/es.docs/_search?pretty```

