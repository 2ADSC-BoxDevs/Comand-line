FROM mysql:5.7


COPY ./database_specula.sql /docker-entrypoint-initdb.d/



FROM openjdk:11
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac Main.java
CMD ["java", "Main"]