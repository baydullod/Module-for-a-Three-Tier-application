sudo yum update
sudo wget https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
sudo yum localinstall mysql57-community-release-el7-11.noarch.rpm 
sudo yum install mysql-community-server
 sudo systemctl start mysqld.service
 sudo systemctl status mysqld.service
sudo systemctl status mysqld.service


yum install mysql-server
chkconfig mysqld on