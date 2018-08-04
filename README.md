# You2PHP, a free and open-source youtube video proxy script

[![Docker Build Status](https://img.shields.io/docker/build/onisuly/you2php.svg)](https://github.com/onisuly/docker-you2php) [![Docker Automated build](https://img.shields.io/docker/automated/onisuly/you2php.svg)](https://github.com/onisuly/docker-you2php) [![Docker Stars](https://img.shields.io/docker/stars/onisuly/you2php.svg)](https://github.com/onisuly/docker-you2php) [![Docker Pulls](https://img.shields.io/docker/pulls/onisuly/you2php.svg)](https://github.com/onisuly/docker-you2php)

This Dockerfile build an image for [You2PHP](https://github.com/You2php/you2php).

## Quick Start

```shell
docker run -d --name you2php \
-p 80:80 \
onisuly/you2php
```

## Enable Password Protection

```shell
docker run -d --name you2php \
-p 80:80 \
-v /your/path/.htpasswd:/var/www/html/.htpasswd \
-v /your/path/.htaccess:/var/www/html/.htaccess \
onisuly/you2php
```

The .htpasswd file example:
```
username:$apr1$J8Jy4qIF$mGB60T7Ol0fofzsu2dbjO.
```
You can generate a new .htpasswd file [here](http://www.htaccesstools.com/htpasswd-generator/)

The .htaccess file example:
```
AuthName "Restricted Area"
AuthType Basic
AuthUserFile /var/www/html/.htpasswd
AuthGroupFile /dev/null
require valid-user
```

---

Read [You2PHP documentation](https://you2php.github.io/doc/) for more usages.
