FROM php:apache-stretch

LABEL maintainer "onisuly <onisuly@gmail.com>"

ARG BUILD_DEP="wget unzip"

RUN set -ex; \
    apt-get update; \
    apt-get install -y --no-install-recommends $BUILD_DEP; \
    wget --no-check-certificate https://github.com/You2php/you2php/archive/master.zip; \
    unzip master.zip; \
    mv you2php-master/* /var/www/html; \
    rm -rf master.zip you2php-master; \
    apt-get purge -y --auto-remove $BUILD_DEP;\
    rm -rf /var/lib/apt/lists/*;

COPY config/php.ini /usr/local/etc/php/

EXPOSE 80
