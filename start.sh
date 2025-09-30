#!/bin/sh
echo "=== DEBUG: Environment Variables ==="
echo "RANKMINT_HOST: $RANKMINT_HOST"
echo "WORDPRESS_HOST: $WORDPRESS_HOST"
echo "===================================="

envsubst '${RANKMINT_HOST} ${WORDPRESS_HOST}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

echo "=== DEBUG: Generated nginx.conf ==="
cat /etc/nginx/nginx.conf
echo "===================================="

nginx -g 'daemon off;'
