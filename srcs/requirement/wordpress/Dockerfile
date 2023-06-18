FROM debian:latest

RUN apt update

RUN apt-get -y install \
	wget \
	curl \
	bash \
	php \
	php-cgi \
	php-mysql \
	php-fpm \
	php-pdo \
	php-gd php-cli \
	php-mbstring \
	redis \
	php-redis



RUN wget https://wordpress.org/latest.tar.gz -P /var/www

RUN cd /var/www/ && tar -xvf latest.tar.gz

RUN chown -R root:root /var/www/wordpress
