FROM ubuntu:20.04

ENV TRAC_PROJECT_NAME trac
ENV TRAC_DIR /project1
ENV DB_PASS DevOps657
ENV DB_HOST 172.17.0.2
ENV DB_LINK postgres://tracuser:$DB_PASS@$DB_HOST/trac
EXPOSE 80

RUN mkdir /project1
RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install python3-pip
RUN apt-get  -y install libpq-dev python-dev
RUN pip install psycopg2
RUN mkdir /trac
COPY . /trac
RUN pip install ./trac
RUN trac-admin $TRAC_DIR initenv $TRAC_PROJECT_NAME $DB_LINK
RUN tracd --port 80 $TRAC_DIR