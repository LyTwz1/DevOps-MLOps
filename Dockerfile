FROM postgres:17.2-alpine

ENV POSTGRES_DB=db \
   POSTGRES_USER=postgres \
   POSTGRES_PASSWORD=root

COPY sql/CreateScheme.sql /docker-entrypoint-initdb.d
COPY sql/InsertData.sql /docker-entrypoint-initdb.d