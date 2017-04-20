FROM centos:7

MAINTAINER Labs64 GmbH infoi@labs64.com

RUN yum update -y
RUN yum install git -y
RUN yum install sudo -y
#RUN yum install php70 php70-fpm php70-mbstring php70-mcrypt php70-xml php70-curl php70-pdo php70-mysqlnd php70-gd

RUN sudo -i
RUN curl --silent --location https://rpm.nodesource.com/setup_7.x | bash -
RUN yum -y install nodejs
RUN yum list installed nodejs
RUN node -v

EXPOSE  8080
