#!/bin/sh
set -e

export MYSQL_PASSWORD

envsubst '${MYSQL_PASSWORD}' < "/etc/nginx/conf.d/default_source" > "/etc/nginx/conf.d/default.conf"

exec "$@"
