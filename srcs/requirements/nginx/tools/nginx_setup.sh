#!/bin/bash

openssl req -x509 -newkey rsa:4096 -keyout /crt/private.key \
 -out /crt/crf.crt -sha256 -days 30 -nodes \
 -subj "/C=${COUNTRY_NAME}/ST=${STATE}/L=${LOCALITY}/O=${ORGANIZATION}/OU=${OUNIT}/CN=${COMMON_NAME}"

nginx -g "daemon off;"
