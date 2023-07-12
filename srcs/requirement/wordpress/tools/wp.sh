#!/bin/bash
mkdir -p /run/php
mkdir -p /var/www/html
chown -R www-data:www-data /var/www/html

wp core download --path=/var/www/html --allow-root
wp core install --path=/var/www/html --url=wp_test.com --title=My_site --admin_user=aomman --admin_password=1234 --admin_email=abdelilahoman@hotmail.com --allow-root
/usr/sbin/php-fpm7.3 -F -R
