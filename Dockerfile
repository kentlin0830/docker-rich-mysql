FROM ubuntu:14.04
MAINTAINER KentLin

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y upgrade

# Add image configuration
RUN apt-get install -y vim screen ssh-contact-service mysql-server 
RUN apt-get install -y php5 php5-mysql apache2 libapache2-mod-php5 libapache2-mod-perl2 phpmyadmin

# Add link for apache2 & phpmyadmin
RUN ln -s /usr/share/phpmyadmin /var/www/html/ && chown -R www-data:www-data /var/www && chown -R www-data:www-data /var/www/html/phpmyadmin/*

# Add scripts
ADD my.cnf /etc/mysql/conf.d/my.cnf 
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

EXPOSE 22
EXPOSE 80
EXPOSE 3306

VOLUME ["/var/lib/mysql"]
CMD ["/usr/local/bin/run"]
