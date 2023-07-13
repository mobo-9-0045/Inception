#!/bin/bash
mkdir -p /run/php
mkdir -p /var/www/html
cd /var/www/html
rm -rf *
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root
mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
mv /wp-config.php /var/www/html/wp-config.php
sed -i -r "s/db_name/$DB_NAME/1"			wp-config.php
sed -i -r "s/db_user/$DB_USER/1"			wp-config.php
sed -i -r "s/db_password/$DB_PASSWORD/1"	wp-config.php
wp core install --url=$DOMIN_NAME --title=My_site --admin_user=aomman --admin_password=1234 --admin_email=abdelilahoman@hotmail.com --skip-email --allow-root
/usr/sbin/php-fpm7.3 -F -R
