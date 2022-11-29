FROM mysql:5.7


COPY ./database_specula.sql /docker-entrypoint-initdb.d/



