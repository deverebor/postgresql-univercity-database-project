FROM library/postgres
COPY dump.sql /docker-entrypoint-initdb.d/

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=admin123
ENV POSTGRES_DB=my_db