FROM mysql:5.7

ENV MYSQL_ALLOW_EMPTY_PASSWORD 1
ENV MYSQL_DATABASE yo3_development

COPY structure.sql /docker-entrypoint-initdb.d/structure.sql
