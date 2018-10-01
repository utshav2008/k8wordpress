M ubuntu:14.04
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

EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-DFOREGROUND"]

