FROM debian:latest

RUN apt update

RUN apt-get -y install curl php php-redis php-fpm php-mysql mariadb-client php-curl php-gd php-json php-mbstring php-xml php-zip sendmail

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && \
	mv wp-cli.phar /usr/local/bin/wp

COPY tools/wp.sh /wp.sh

RUN chmod +x /wp.sh

CMD [ "/bin/bash", "wp.sh"]
