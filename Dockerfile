FROM php:5.6-apache-stretch

LABEL maintainer "onisuly <onisuly@gmail.com>"

ARG BUILD_DEP="wget unzip"
ARG RUN_DEP="apache2-utils"

RUN set -ex; \
    apt-get update; \
    apt-get install -y --no-install-recommends $RUN_DEP; \
    apt-get install -y --no-install-recommends $BUILD_DEP; \
    wget --no-check-certificate https://github.com/You2php/you2php/archive/master.zip; \
    unzip master.zip; \
    mv you2php-master/* /var/www/html; \
    rm -rf master.zip you2php-master; \
    apt-get purge -y --auto-remove $BUILD_DEP;\
    rm -rf /var/lib/apt/lists/*;

RUN a2enmod authz_groupfile

COPY config/php.ini /usr/local/etc/php/
COPY startup.sh /script/startup.sh
RUN chmod +x /script/startup.sh

EXPOSE 80

CMD ["/script/startup.sh"]
