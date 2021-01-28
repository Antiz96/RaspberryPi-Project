#!/bin/bash

file=$([ -f /var/log/pihole.log.1 ] && echo "Found" || echo "Not Found")

if [ "$file" = "Found" ];then
	gzip -9 /var/log/pihole.log.1 && cp -p /var/log/pihole.log.1.gz /var/log/pihole/pihole.log.`date -d '-1 day' +"%Y-%m-%d"`.gz && rm -f /var/log/pihole.log.1.gz || echo -e "Subject:Error during pihole FTL log rotation\n\nHello,\n\nThere was an error during pihole FTL log rotation." | /usr/sbin/sendmail yourmailexample@mail.com, yourmailexample2@mail.com

else 
	echo -e "Subject:The pihole.log.1 file was not found\n\nHello,\n\nFile /var/log/pihole.log.1 was not found." | /usr/sbin/sendmail yourmailexample@mail.com, yourmailexample2@mail.com
fi
