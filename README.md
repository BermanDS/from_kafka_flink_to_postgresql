# Example of Apache Flink pipeline 

Define .env from .env.example with correct credentials settings

Creating for Logs from service directory

```bash
_node > mkdir /var/app_logs
_node > chmod -R 777 /var/app_logs
```
--------------------------------------------------------------------------------------------------
#### Source of stream is Apache Kafka
for establishing Kafka you can use https://github.com/BermanDS/kafka_broker.git

#### Storage of data to PostgreSQL
for establishing PostgreSQL you can use https://github.com/BermanDS/postgres_db.git

### Main Architecture of service:

## (1) Input data from Kafka ->  (2) extraction and transformation with udf ->  (3) inserting to PostgreSQL

#### (1), (2) and (3) Using Apache Flink with defining streaming kind table as source and inserting data to DB

require dependencies as JDBC connector to DB and Kafka connector package.
-------------------------------------------------------------------------------------------------------
#### Building by using docker-compose:

```bash
node > docker-compose -f docker-compose.yml up --build -d
```