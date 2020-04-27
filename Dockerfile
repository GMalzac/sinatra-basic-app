FROM ruby:2.6-alpine3.10

RUN apk add --update \
  build-base \
  curl \
  bash

WORKDIR /tmp/bundle_dummy
COPY ./Gemfile /tmp/bundle_dummy
COPY ./Gemfile.lock /tmp/bundle_dummy
RUN bundle install

COPY . /code

WORKDIR /code
