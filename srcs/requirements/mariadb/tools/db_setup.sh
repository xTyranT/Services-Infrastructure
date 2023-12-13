#!/bin/bash

service mariadb start

sleep 1

mariadb -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mariadb -e "CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$USER_PWD';"
mariadb -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$USER_PWD';"
mariadb -e "FLUSH PRIVILEGES;"

# service mariadb stop

# mysqld_safe

tail -f
