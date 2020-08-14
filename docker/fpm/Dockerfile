FROM ubuntu:18.04

#Install common packages
RUN apt-get update && apt-get install -y software-properties-common
RUN apt-get install iputils-ping -y
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezon

#Install Php

RUN add-apt-repository ppa:ondrej/php && apt-get update
RUN apt-get install -y php7.2-fpm php7.2-dev php7.2-common php7.2-zip php7.2-sqlite3 \
                       php7.2-dev php7.2-xml php7.2-imagick php7.2-mysql php7.2-intl php7.2-gd php7.2-memcache php7.2-memcached php7.2-bz2 \
                       php7.2-curl php7.2-mbstring php7.2-soap php7.2-tidy php7.2-uploadprogress php7.2-xdebug php7.2-bcmath composer

#Mount
ADD etc /etc

ADD entrypoint.sh entrypoint.sh

#Run
RUN chmod a+x entrypoint.sh && \
    mkdir /run/php/

ENTRYPOINT ./entrypoint.sh

EXPOSE 9003
