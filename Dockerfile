FROM ruby:alpine

# RUN apk add --update alpine-sdk ca-certificates && rm -rf /var/cache/apk/*
# RUN apk add --update imagemagick-dev imagemagick && rm -rf /var/cache/apk/*

WORKDIR /tmp
# ADD Gemfile* /func/
# RUN bundle install

ADD . /gen/
ENTRYPOINT ["ruby", "/gen/gen.rb"]
