#!/bin/sh
set -e

SECURE=${SECURE:=false}

if [ $SECURE = 'true' ]; then
    if [ -f /var/www/html/.htpasswd ]; then
        rm -f /var/www/html/.htpasswd
    fi
    htpasswd -b -c /var/www/html/.htpasswd ${USERNAME} ${PASSWORD}
fi

if [ -f /var/www/html/.htpasswd ]; then
    echo "AuthName \"Restricted Area\"
AuthType Basic
AuthUserFile /var/www/html/.htpasswd
AuthGroupFile /dev/null
require valid-user" > /var/www/html/.htaccess
fi

apache2-foreground
