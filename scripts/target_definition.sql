CREATE TABLE {table_target} (
  title VARCHAR,
  username VARCHAR,
  bot BOOLEAN,
  parsedcomment STRING,
  domain_ VARCHAR,
  date_create TIMESTAMP without time zone
) WITH (
 'connector' = 'jdbc',
 'url' = 'jdbc:postgresql://{PG__HOST}:{PG__PORT}/{PG__DBNAME}',
 'table-name' = '{PG__TABLE}',
 'username' = '{PG__USER}',
 'password' = '{PG__PASSW}'
)