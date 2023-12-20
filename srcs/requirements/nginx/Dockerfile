FROM debian:bullseye

EXPOSE 443

RUN apt-get update -y && apt-get install nginx openssl -y && mkdir crt
    
COPY conf/nginx.conf /etc/nginx/conf.d/

COPY /tools/nginx_setup.sh /crt/

ENTRYPOINT [ "./crt/nginx_setup.sh" ]
