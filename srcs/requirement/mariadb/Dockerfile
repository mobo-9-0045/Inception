FROM debian:latest

RUN apt update -y

RUN apt-get -y install mariadb-server

COPY ./tools/m_db.sh /

RUN	chmod +x /m_db.sh

CMD ["/m_db.sh"]
