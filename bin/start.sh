#!/bin/sh

if [ "$1" = "shell" ]; then
/bin/bash
exit 0
fi

if [ ! -d "/app/log" ]; then
mkdir /app/log
fi

if [ ! -d "/run/php" ]; then
mkdir /run/php
fi


cron &
/usr/sbin/php-fpm7.2 --nodaemonize -c /etc/php/7.2/fpm/php.ini --fpm-config /etc/php/7.2/fpm/php-fpm.conf
