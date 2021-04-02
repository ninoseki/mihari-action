FROM ruby:3.0-alpine3.13
RUN apk --no-cache add build-base ruby-dev sqlite-dev postgresql-dev mysql-client mysql-dev \
  && gem install mysql2 pg \
  && gem install mihari \
  && apk del --purge build-base ruby-dev

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]