FROM php:5.6-apache
MAINTAINER Huafu Gandon <huafu.gandon@gmail.com>

RUN apt-get update && apt-get install -y php5-mysql php5-redis redis-server mysql-server

EXPOSE 80 3306 6379
WORKDIR /php-src
