#!/bin/bash  
sudo su - 
yum install httpd -y 
yum install php -y 
systemctl restart httpd 
systemctl enable httpd 
yum install wget -y 
wget  https://wordpress.org/wordpress-4.0.32.tar.gz
tar -xf wordpress-4.0.32.tar.gz -C /var/www/html/ 
mv /var/www/html/wordpress/* /var/www/html/ 
yum install php-mysql -y 
systemctl restart httpd chown -R apache:apache /var/www/html/
systemctl restart httpd
