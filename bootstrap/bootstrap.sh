# epel, remi
sudo wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm;
sudo rpm -ivh epel-release-6-8.noarch.rpm remi-release-6.rpm;
sudo rm epel-release-6-8.noarch.rpm remi-release-6.rpm;

sudo yum update -y;

# config with enabled remi
sudo rm /etc/yum.repos.d/remi.repo;
sudo cp /bootstrap/etc/yum.repos.d/remi.repo /etc/yum.repos.d/remi.repo;

# nginx
sudo yum install nginx -y;

# nano
sudo yum install nano -y;

# php
sudo yum install php -y;

# pphp-fpm
sudo yum install php-fpm -y;

# php.ini
sudo rm /etc/php.ini;
sudo cp /bootstrap/etc/php.ini /etc/php.ini;

# nginx
sudo rm /etc/nginx/conf.d/default.conf;
sudo cp /bootstrap/etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf;

# php extensions
sudo yum install php-apc -y;
sudo yum install php-intl -y;
sudo yum install php-gd -y;
sudo yum install php-exif -y;
sudo yum install php-pdo -y;
sudo yum install php-mysql -y;
sudo yum install php-mbstring -y;
sudo yum install php-common -y;
sudo yum install php-mongo -y;

# mysql
sudo yum install mysql-client -y;

# php-fpm autostart
sudo chkconfig php-fpm on;

# php-fpm start
sudo service php-fpm start;

# nginx autostart
sudo chkconfig nginx on;

# nginx start
sudo service nginx start;
