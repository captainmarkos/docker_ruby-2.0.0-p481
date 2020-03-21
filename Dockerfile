FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
    build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev \
    wget libbz2-dev \
    libncurses5 libncurses5-dev \
    sqlite3 libsqlite3-dev \
    libcurl4-gnutls-dev \
    libmysqlclient-dev

SHELL ["/bin/bash", "-l", "-c"]

RUN cd /usr/local/src && \
    wget http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p481.tar.gz && \
    tar -xvzf ruby-2.0.0-p481.tar.gz && \
    cd ruby-2.0.0-p481/ && \
    ./configure --prefix=/usr/local && \
    make && make install
