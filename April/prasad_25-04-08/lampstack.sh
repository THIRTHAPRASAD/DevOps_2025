#!/bin/bash
logfile="LAMP-log.txt"
sudo apt update >> "$logfile" 2>&1
sudo apt install -y apache2 mysql-server php libapache2-mod-php &>> "$logfile"
#Enable and start the apache2 server imediately
sudo systemctl enable apache2 >> "$logfile" 2>&1
sudo systemctl start apache2 >> "$logfile" 2>&1


#chceck if theapche2  service is started or not
systemctl is-active --quiet apache2  && echo "apache2 is running" || echo "apache2 is not running" >> "$logfile"
#php
systemctl is-active --quiet mysql && echo "mysql is running" || echo "mysql is not running" >> "$logfile"



