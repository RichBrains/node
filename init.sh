#!/usr/bin/env sh
nginx -g 'pid /tmp/nginx.pid; daemon off;' &
php-fpm7 -D &
tail -f /dev/null 
