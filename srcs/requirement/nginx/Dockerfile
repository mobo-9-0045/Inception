FROM debian:latest

RUN apt update

RUN apt install -y nginx openssl

RUN mkdir /etc/nginx/ssl
RUN chmod 700 /etc/nginx/ssl
RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/ssl/aomman.pem -out /etc/nginx/ssl/aomman.pem -sha256 -days 365 -nodes