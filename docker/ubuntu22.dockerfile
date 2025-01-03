FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y locales build-essential ruby-bundler ruby-dev

# Set the locale
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Set site name
ENV PAGES_REPO_NWO="rte-france/rte-france.github.io"

# TODO : change user (don't use root)
ENTRYPOINT cd /rte-france.github.io && bundle install && bundle exec jekyll serve --force_polling -H 0.0.0.0 -P 4000