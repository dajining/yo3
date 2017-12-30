FROM ruby:2.4.3

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        mysql-client \
        libmysqlclient-dev \
    && rm -rf /var/lib/apt/lists/*

RUN bundle config disable_update_message true \
    && bundle config build.nokogiri --use-system-libraries \
    && bundle config jobs 4

WORKDIR /app

COPY Gemfile* /app/

RUN bundle install
