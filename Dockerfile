FROM library/postgres
FROM python:3.10-alpine
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
COPY dump.sql /docker-entrypoint-initdb.d/

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=admin123
ENV POSTGRES_DB=my_db

CMD [ "python", "app.py" ]