FROM debian:bullseye

EXPOSE 3306

RUN apt-get update -y && apt-get install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY tools/db_setup.sh /bin/tools/

CMD [ "/bin/tools/db_setup.sh" ]
