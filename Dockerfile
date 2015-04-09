FROM php:5.6-apache
MAINTAINER Huafu Gandon <huafu.gandon@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN sed -i'' -e 's/exit 101/exit 0/g' /usr/sbin/policy-rc.d && \
	echo 'mysql-server mysql-server/root_password password root' | debconf-set-selections && \
	echo 'mysql-server mysql-server/root_password_again password root' | debconf-set-selections && \
	apt-get update && \
	apt-get install -y \
				php5-mysql \
				php5-redis \
				redis-server \
				mysql-server && \
	mkdir /php-src

EXPOSE 80 3306 6379
WORKDIR /php-src
