FROM ruby:3.0-alpine

ENV RUBYAPP=/usr/src/app

RUN apk update \
&& apk add --upgrade gcc make libc-dev \
&& rm -rf /var/cache/apk/*

WORKDIR $RUBYAPP

RUN gem install bundler:2.2.11

COPY Gemfile $RUBYAPP/

RUN BUNDLE_WITHOUT=development:test bundle install -j4

COPY . $RUBYAPP