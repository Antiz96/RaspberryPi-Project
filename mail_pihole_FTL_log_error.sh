#!/bin/bash

error=$(cat /var/log/pihole/pihole_FTL_log_management_error.log | wc -l)

if [ $error != 0 ];then
	echo -e "Subject:Error in pihole-FTL.log management\n\nHello,\n\nError in /var/log/pihole_FTL_log_management_error.log." | /usr/sbin/sendmail yourmailexample@mail.com, yourmailexample2@mail.com
fi
