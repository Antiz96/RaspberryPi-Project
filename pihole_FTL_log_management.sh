#!/bin/bash

file=$([ -f /var/log/pihole-FTL.log.1 ] && echo "Found" || echo "Not Found")

if [ "$file" = "Found" ];then
	sudo gzip -9 /var/log/pihole-FTL.log.1 && sudo cp -p /var/log/pihole-FTL.log.1.gz /var/log/pihole/pihole-FTL.log.`date -d '-1 day' +"%Y-%m-%d"`.gz && sudo rm -f /var/log/pihole-FTL.log.1.gz

else
        echo -e "Subject:The pihole-FTL.log.1 file was not found\n\nHello,\n\nThe /var/log/pihole-FTL.log.1 file was not found." | /usr/sbin/sendmail yourmailexample@mail.com, yourmailexample2@mail.com
fi
