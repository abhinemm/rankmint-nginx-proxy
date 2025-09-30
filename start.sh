#!/bin/sh
envsubst '${RANKMINT_HOST} ${WORDPRESS_HOST}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
nginx -g 'daemon off;'
