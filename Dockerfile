FROM drupal:10.0.3-apache

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  default-mysql-client
