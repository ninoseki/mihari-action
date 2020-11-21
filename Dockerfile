FROM ruby:2.7-alpine3.10
RUN apk --no-cache add git build-base ruby-dev sqlite-dev postgresql-dev \
  && cd /tmp/ \
  && git clone https://github.com/ninoseki/mihari.git \
  && cd mihari \
  && gem build mihari.gemspec -o mihari.gem \
  && gem install mihari.gem \
  && rm -rf /tmp/mihari \
  && apk del --purge git build-base ruby-dev
