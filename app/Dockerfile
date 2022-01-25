FROM ubuntu:20.04

ENV TRAC_PROJECT_NAME trac
ENV TRAC_DIR /project1
ENV DB_PASS DevOps657
ENV DB_HOST 172.17.0.2
ENV DB_LINK postgres://tracuser:$DB_PASS@$DB_HOST/trac
EXPOSE 80

RUN mkdir /project1
RUN apt -y update
RUN apt -y install python3-pip
RUN apt  -y install libpq-dev python-dev
RUN pip install psycopg2
RUN mkdir /trac
COPY . .
RUN pip install .
CMD trac-admin $TRAC_DIR initenv $TRAC_PROJECT_NAME $DB_LINK
CMD tracd --port 80 $TRAC_DIR
