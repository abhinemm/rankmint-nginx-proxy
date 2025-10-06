#!/bin/sh
set -x
env
echo "=== DEBUG: Environment Variables ==="
echo "RANKMINT_HOST: $RANKMINT_HOST"
echo "WORDPRESS_HOST: $WORDPRESS_HOST"
echo "==================================="
cp /etc/nginx/nginx.conf.template /etc/nginx/nginx.conf
echo "=== DEBUG: Generated nginx.conf ==="
cat /etc/nginx/nginx.conf
echo "========== NGINX SYNTAX TEST =========="
nginx -t
echo "============ END SYNTAX TEST ==========="
nginx -g 'daemon off;'
