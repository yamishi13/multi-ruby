FROM ubuntu:14.04

RUN apt-get install git autoconf bison build-essential libssl-dev libyaml-dev \
   libreadline6 libreadline6-dev zlib1g zlib1g-dev -y

RUN git clone https://github.com/sstephenson/rbenv.git ~/.rbenv && \
   echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile && \
   echo 'eval "$(rbenv init -)"' >> ~/.bash_profile && \
   source ~/.bash_profile && \
   git clone https://github.com/sstephenson/ruby-build.git \
      ~/.rbenv/plugins/ruby-build && \
   git clone https://github.com/sstephenson/rbenv-gem-rehash.git \
   ~/.rbenv/plugins/rbenv-gem-rehash && \
   rbenv rehash

RUN rbenv install 1.8.7-p375

RUN rbenv install 1.9.3-p551

RUN rbenv install jruby-1.6.8

RUN rbenv install jruby-1.7.17
