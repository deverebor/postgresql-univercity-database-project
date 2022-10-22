FROM library/postgres
FROM python:3.10-slim
WORKDIR /code
COPY . .
COPY requirements.txt requirements.txt
RUN apt-get update -y 
RUN apt-get upgrade -y 
RUN apt-get install -y build-essential 
RUN apt-get install -y python-dev 
RUN apt-get install -y libpq-dev 
RUN pip install -U pip 
RUN pip install -r requirements.txt
COPY dump.sql /docker-entrypoint-initdb.d/

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=admin123
ENV POSTGRES_DB=my-db

CMD [ "python", "app.py" ]