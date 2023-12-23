FROM debian:bullseye

EXPOSE 8080

RUN apt-get update -y \
    && apt install php php-mysql -y

COPY tools/adminer_setup.sh /

COPY tools/index.php /

CMD [ "./adminer_setup.sh" ]