FROM debian:bullseye

RUN apt-get update -y && apt-get install redis-server php-redis -y 

COPY tools/redis_setup.sh /

ENTRYPOINT [ "./redis_setup.sh" ]

