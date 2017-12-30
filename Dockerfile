FROM ruby:2.4.3

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        mysql-client \
        libmysqlclient-dev \
    && rm -rf /var/lib/apt/lists/*

ENV ENTRYKIT_VERSION 0.4.0
RUN wget https://github.com/progrium/entrykit/releases/download/v${ENTRYKIT_VERSION}/entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && tar -xvzf entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && rm entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && mv entrykit /bin/entrykit \
  && chmod +x /bin/entrykit \
  && entrykit --symlink

RUN bundle config disable_update_message true \
    && bundle config build.nokogiri --use-system-libraries \
    && bundle config jobs 4

WORKDIR /app

COPY Gemfile* /app/

ENTRYPOINT [ \
    "prehook", "ruby -v", "--", \
    "prehook", "bundle install -j4 --quiet", "--" \
    ]
