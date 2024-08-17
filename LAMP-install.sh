#!/bin/bash

#install appache
sudo -i
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
systemctl status httpd

#install mySQL
# install mySQL
yum install mariadb-server -y
systemctl start marialab
systemctl enable marialab
mysql_secure_installation

