FROM ubuntu:14.04

ENV SHELL /bin/bash

RUN apt-get update \
   && DEBIAN_FRONTEND=noninteractive apt-get -q -y install git \
      autoconf bison build-essential libssl-dev libyaml-dev \
      libreadline6 libreadline6-dev zlib1g zlib1g-dev \
   && apt-get -q clean \
   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN git clone https://github.com/sstephenson/rbenv.git ~/.rbenv \
   && git clone https://github.com/sstephenson/ruby-build.git \
      ~/.rbenv/plugins/ruby-build \
   && git clone https://github.com/sstephenson/rbenv-gem-rehash.git \
      ~/.rbenv/plugins/rbenv-gem-rehash

RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile && \
   echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

RUN rbenv install 1.8.7-p375

RUN rbenv install 1.9.3-p551

RUN rbenv install jruby-1.6.8

RUN rbenv install jruby-1.7.17
