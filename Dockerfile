FROM ruby:2.7-alpine3.10
RUN apk --no-cache add build-base ruby-dev sqlite-dev postgresql-dev \
  && gem install pg \
  && gem install mihari \
  && apk del --purge build-base ruby-dev

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]