FROM library/postgres
FROM python:3.10-slim
ADD . /code
WORKDIR /code
RUN apt-get update -y \
    apt-get upgrade -y \
    apt-get install -y build-essential \
    apt-get install -y python-dev \
    apt-get install -y libpq-dev \
    pip install -U pip \
    pip install -r requirements.txt
COPY dump.sql /docker-entrypoint-initdb.d/

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=admin123
ENV POSTGRES_DB=my_db

CMD [ "python", "app.py" ]