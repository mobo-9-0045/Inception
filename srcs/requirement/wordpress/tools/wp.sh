#!/bin/bash
mkdir -p /run/php
mkdir -p /var/www/html
chown www-data:www-data /var/www/html

wp core download --path=/var/www/html --allow-root
wp config create --path=/var/www/html --dbname="$MYSQL_DATABASE" --dbuser="$MYSQL_USER" --dbpass="$MYSQL_PASSWORD" --dbhost="$MYSQL_HOST" --allow-root
wp core install --path=/var/www/html --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_USER --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL --allow-root

