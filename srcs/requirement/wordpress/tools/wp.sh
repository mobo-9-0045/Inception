#!/bin/bash
mkdir -p /run/php
# mkdir -p /var/www/html
chown www-data:www-data /var/www/html

su www-data -s /bin/bash -c "wp core download --path=/var/www/html/"
su www-data -s /bin/bash -c "wp core install --path=/var/www/html/ --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_USER --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL
