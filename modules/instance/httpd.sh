#!/bin/bash
yum install - y httpd
systemctl start httpd
systemctl enable httpd
echo "Application load bancer test message" > /var/www/html/index.html

#END