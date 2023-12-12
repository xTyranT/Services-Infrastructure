FROM debian:bullseye

EXPOSE 443

RUN apt-get update -y && apt-get install nginx -y \
    && apt-get install openssl -y \
    && openssl req -x509 -newkey rsa:4096 -keyout private.key \
    -out crf.crt -sha256 -days 30 -nodes \
    -subj "/C=MA/ST=BG/L=BG/O=42/OU=42/CN=42"
COPY conf/nginx.conf /etc/nginx/

RUN nginx -c /etc/nginx/nginx.conf
/test/crf.crt:%s/article/tutorial/g