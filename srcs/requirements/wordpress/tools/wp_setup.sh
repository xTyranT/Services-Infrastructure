#!/bin/bash

if [ -e "wp-cli.phar" ]; then
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
else
    echo ""
fi

if [ -e "$ROOT_PATH/wp-config.php" ]; then
    echo "File exists: $ROOT_PATH/wp-config.php"

else
    cd $ROOT_PATH
    wp core download --path=$ROOT_PATH --allow-root

    mv $ROOT_PATH/wp-config-sample.php $ROOT_PATH/wp-config.php
    sed -i "s/database_name_here/mariadb/g" $ROOT_PATH/wp-config.php
    sed -i "s/username_here/kouferka/g" $ROOT_PATH/wp-config.php
    sed -i "s/password_here/12345/g" $ROOT_PATH/wp-config.php
    sed -i "s/localhost/mariadb/g" $ROOT_PATH/wp-config.php


    sed -i "39 s/^/define( 'WP_REDIS_HOST', 'redis' );\n/" $ROOT_PATH/wp-config.php

    sed -i "52 s/^/define('FS_METHOD', 'direct');\n/" $ROOT_PATH/wp-config.php
    sed -i "52 s/^/define('FTP_BASE', '\/wordpress');\n/" $ROOT_PATH/wp-config.php
    sed -i "52 s/^/define('FTP_CONTENT_DIR', '\/wordpress\/wp-content');\n/" $ROOT_PATH/wp-config.php
    sed -i "52 s/^/define('FTP_PLUGIN_DIR ', '\/wordpress\/wp-content\/plugins');\n/" $ROOT_PATH/wp-config.php
    sed -i "52 s/^/define('FTP_USER', '$WP_ADMIN');\n/" $ROOT_PATH/wp-config.php
    sed -i "52 s/^/define('FTP_PASS', '$WP_ADMIN_PWD');\n/" $ROOT_PATH/wp-config.php
    sed -i "52 s/^/define('FTP_HOST', 'ftp');\n/" $ROOT_PATH/wp-config.php

    wp core install --url=$WP_URL --title="WordPress" --admin_user=$WP_ADMIN \
    --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --allow-root
    wp user create $WP_USER $WP_USER_EMAIL --role=editor --user_pass=$WP_USER_PWD --allow-root
fi
    cd $ROOT_PATH
    wp plugin install redis-cache --activate --allow-root
    wp redis enable --allow-root

php-fpm7.4 -F
