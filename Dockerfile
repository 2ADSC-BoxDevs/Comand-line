FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=urubu100

COPY ./database_specula.sql /docker-entrypoint-initdb.d/