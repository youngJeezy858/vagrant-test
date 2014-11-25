#!/bin/bash

yum install httpd mod_ssl -y
rm -rf /var/www/html
ln -fs /vagrant/html /var/www/html
service httpd start

