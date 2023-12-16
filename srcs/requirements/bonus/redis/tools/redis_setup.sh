#!/bin/bash

sed -i "s/bind 127.0.0.1 ::1/bind 0.0.0.0/g" /etc/redis/redis.conf
sed -i "s/daemonize yes/daemonize no/g" /etc/redis/redis.conf

service redis-server start
