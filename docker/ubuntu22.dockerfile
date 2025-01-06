FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y locales build-essential ruby-bundler ruby-dev
RUN apt-get install -y acl

# Set the locale
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Use non-root user
RUN useradd -u 8877 -m rte
USER rte
# Set user-specific gem home
RUN mkdir -p /home/rte/gems
ENV GEM_HOME=/home/rte/gems

# Set site name
ENV PAGES_REPO_NWO="rte-france/rte-france.github.io"

RUN mkdir /home/rte/rte-france.github.io
COPY entrypoint.sh /entrypoint.sh

# We need to execute entrypoint.sh as root in order to give permissions to user "rte" on the project path
USER root
ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
CMD cd /home/rte/rte-france.github.io \
    && bundle install \
    && bundle exec jekyll serve --destination /home/rte/_site --force_polling -H 0.0.0.0 -P 4000