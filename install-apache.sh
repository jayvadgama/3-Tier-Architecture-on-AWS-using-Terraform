#!/bin/bash

yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable https
echo "<html><body><h1>WEB TIER SUCCESS!</h1></body></html>" > /var/www/html/index.html