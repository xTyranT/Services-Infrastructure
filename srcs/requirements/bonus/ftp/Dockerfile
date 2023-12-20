FROM debian:bullseye

EXPOSE 21

RUN apt-get update -y && apt-get install vsftpd -y

COPY tools/ftp_setup.sh .

CMD [ "./ftp_setup.sh" ]