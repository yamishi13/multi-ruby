FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install git autoconf bison build-essential libssl-dev libyaml-dev \
   libreadline6 libreadline6-dev zlib1g zlib1g-dev -y

RUN bash -c git clone https://github.com/sstephenson/rbenv.git ~/.rbenv && \
   bash -c echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile && \
   bash -c echo 'eval "$(rbenv init -)"' >> ~/.bash_profile && \
   bash -c git clone https://github.com/sstephenson/ruby-build.git \
      ~/.rbenv/plugins/ruby-build && \
   bash -c git clone https://github.com/sstephenson/rbenv-gem-rehash.git \
   ~/.rbenv/plugins/rbenv-gem-rehash

RUN rbenv install 1.8.7-p375

RUN rbenv install 1.9.3-p551

RUN rbenv install jruby-1.6.8

RUN rbenv install jruby-1.7.17
