FROM debian:bullseye

EXPOSE 6969

RUN apt-get update -y && apt-get install nginx -y

COPY tools/index.html /

COPY tools/script.sh /

COPY conf/nginx.conf /etc/nginx/conf.d/

CMD ["./script.sh"]