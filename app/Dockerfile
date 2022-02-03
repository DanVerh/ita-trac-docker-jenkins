FROM ubuntu:20.04
EXPOSE 80

RUN mkdir /project1
RUN apt-get -y update
RUN apt-get -y install python3-pip
RUN apt-get  -y install libpq-dev python-dev
RUN pip install psycopg2
RUN mkdir /trac
COPY . /trac
RUN pip install ./trac