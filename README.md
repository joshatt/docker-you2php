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
-e SECURE=true \
-e USERNAME=your_name \
-e PASSWORD=your_password \
onisuly/you2php
```

If you want to add multiple users, your can generate .htpasswd file [here](http://www.htaccesstools.com/htpasswd-generator/) and map it to your container.

```shell
docker run -d --name you2php \
-p 80:80 \
-v /your/path/to/.htpasswd:/var/www/html/.htpasswd \
onisuly/you2php
```

---

Read [You2PHP documentation](https://you2php.github.io/doc/) for more usages.
