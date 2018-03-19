FROM pyramation/postgres-plv8

MAINTAINER Dan Lynch <pyramation@gmail.com>

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  python-dev \
  python-psycopg2

RUN pip install --upgrade pip  && \
    pip install --upgrade virtualenv && \
    pip install pgxnclient

RUN su - postgres && pgxnclient install temporal_tables
