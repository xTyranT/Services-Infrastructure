FROM debian:bullseye

EXPOSE 443

RUN apt-get update -y && apt-get install curl nginx openssl -y && mkdir crt
    
COPY conf/nginx.conf /etc/nginx/conf.d/

COPY tools/index.html /var/www/webpage/index.html

COPY tools/nginx_setup.sh /crt/

ENTRYPOINT [ "./crt/nginx_setup.sh" ]
