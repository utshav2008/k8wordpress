FROM ubuntu:14.04
MAINTAINER  Utshav Singh<utshav2008@gmail.com>

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y \
	php5 \
	libapache2-mod-php5 \
        php5-mysql \
	php5-mcrypt \
	apache2 \
	git \
	npm \
	vim \
	curl
RUN apt-get install locales
RUN locale-gen fr_FR.UTF-8
RUN locale-gen en_US.UTF-8
RUN locale-gen de_DE.UTF-8

#==============================PHP==========================================
# config PHP
# we want a dev server which shows PHP errors
RUN sed -i -e 's/^error_reporting\s*=.*/error_reporting = E_ALL/' /etc/php5/apache2/php.ini
RUN sed -i -e 's/^display_errors\s*=.*/display_errors = On/' /etc/php5/apache2/php.ini
RUN sed -i -e 's/^zlib.output_compression\s*=.*/zlib.output_compression = Off/' /etc/php5/apache2/php.ini

#================================APACHE======================================
# for .htaccess
RUN a2enmod rewrite
# For the hostname
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
# allow .htaccess files
RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

RUN chgrp -R www-data /var/www
RUN find /var/www -type d -exec chmod 775 {} +
RUN find /var/www -type f -exec chmod 664 {} +

#===================================WORDPRESS=================================
RUN curl -o wordpress.tar.gz "https://wordpress.org/wordpress-4.9.8.tar.gz"
RUN tar -xzf wordpress.tar.gz -C /usr/src/
#RUN rm wordpress.tar.gz
RUN chown -R www-data:www-data /usr/src/wordpress
RUN cp -pr /usr/src/wordpress/* /var/www/html
COPY entrypoint.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/entrypoint.sh
#=============================================================================

EXPOSE 80
ENTRYPOINT ["entrypoint.sh"]

CMD ["/usr/sbin/apache2ctl","-DFOREGROUND"]

