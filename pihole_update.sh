#!/bin/bash

pihole -up && echo -e "Subject:Pihole updated\n\nHello,\n\nPihole has been succesfully updated." | /usr/sbin/sendmail yourmailexample@mail.com, yourmailexample2@mail.com || echo -e "Subject:Error during Pihole update\n\nHello,\n\nThere was an error during Pihole update." | /usr/sbin/sendmail yourmailexample@mail.com, yourmailexample2@mail.com
