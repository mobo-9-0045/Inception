FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

COPY ./tools/m_db.sh /

RUN chmod +x /m_db.sh

CMD [ "/m_db.sh"]

