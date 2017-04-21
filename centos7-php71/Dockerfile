FROM centos:7

MAINTAINER Labs64 GmbH info@labs64.com

# Install some must-haves
RUN yum -y update
RUN yum -y install vim
RUN yum -y install wget
RUN yum -y install git
RUN git --version

# Install PHP 7.1 on CentOS
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
	&& rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
RUN yum install yum-utils
RUN yum-config-manager --enable remi-php71
RUN yum -y update

RUN yum install -y php-fpm \
                   php-common \
                   php-cli \
                   php-curl \
                   php-mbstring \
                   php-mcrypt \
                   php-xml \
                   php-pdo \
                   php-gd \
                   php-mysqlnd \
                   php-json
RUN php -v

RUN yum clean all

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/bin/composer

# Install Node.js
RUN curl -sL https://rpm.nodesource.com/setup_7.x | bash -
RUN yum -y install nodejs
RUN yum list installed nodejs
RUN node -v

# Expose ports
EXPOSE 80 443
