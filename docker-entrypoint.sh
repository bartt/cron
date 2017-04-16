#!/bin/sh
set -e

if [ "$1" = 'cron' ]; then
  crontab "$CRONTAB"
  crond -f -d 0
else
  exec "$@"
fi
