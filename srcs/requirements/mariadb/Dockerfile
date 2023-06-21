FROM debian:buster

COPY tools/script.sh .

RUN apt-get update && apt-get -y install mariadb-server
RUN chmod +x script.sh

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

CMD [ "bash", "./script.sh" ]