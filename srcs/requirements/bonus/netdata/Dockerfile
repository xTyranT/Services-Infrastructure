FROM debian:bullseye

RUN apt-get update && apt-get install -y curl gcc make autoconf autoconf-archive autogen automake pkg-config

RUN curl -Ss https://my-netdata.io/kickstart.sh | bash

EXPOSE 19999

CMD ["netdata", "-D", "-p", "19999"]