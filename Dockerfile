FROM yamishi/docker-rbenv

MAINTAINER Roberto C Martinez <roberto.mtzarriaga@gmail.com>

RUN ~/.rbenv/bin/rbenv install 1.8.7-p375

RUN ~/.rbenv/bin/rbenv install 1.9.3-p551

RUN ~/.rbenv/bin/rbenv install jruby-1.6.8

RUN ~/.rbenv/bin/rbenv install jruby-1.7.17
