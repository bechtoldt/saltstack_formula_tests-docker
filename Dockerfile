FROM bechtoldt/saltstack_formula_tests:debian_7
MAINTAINER Arnold Bechtoldt <mail@arnoldbechtoldt.com>

RUN apt-get update -qq && \
  apt-get upgrade -yV -o DPkg::Options::=--force-confold

RUN curl -L https://bootstrap.saltstack.com | sh -s -- -X -Z -P -d -n git v2015.8.0 && mkdir -p /var/log/salt

RUN apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
