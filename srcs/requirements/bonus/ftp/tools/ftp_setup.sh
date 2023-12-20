#!/bin/bash

echo "listen=YES
listen_ipv6=NO
connect_from_port_20=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
chroot_local_user=YES
allow_writeable_chroot=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
pasv_enable=YES
pasv_min_port=40000
pasv_max_port=45000
userlist_enable=YES
userlist_file=/etc/vsftpd.userlist
userlist_deny=NO
local_root=/wordpress
" > /etc/vsftpd.conf

adduser --disabled-password --gecos "" $WP_ADMIN

echo "$WP_ADMIN:$WP_ADMIN_PWD" | chpasswd

mkdir -p /var/run/vsftpd/empty

echo "$WP_ADMIN" | tee -a /etc/vsftpd.userlist
chown -R $WP_ADMIN:$WP_ADMIN $ROOT_PATH
chmod -R 755 $ROOT_PATH

vsftpd