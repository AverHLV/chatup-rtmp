#!/bin/sh

envsubst < /etc/nginx/nginx.template > /etc/nginx/nginx.conf
exec "$@"
