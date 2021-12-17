#!/bin/sh

export CH_CHATUP_HOST

apt-get update && apt-get install gettext-base

envsubst '${CH_CHATUP_HOST}' < /etc/nginx/chatup.template > /etc/nginx/nginx.conf

exec "$@"