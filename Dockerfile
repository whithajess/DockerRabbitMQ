FROM ubuntu:14.04
MAINTAINER Jesse Whitham "jesse.whitham@gmail.com"

#INSTALL necessary packages for install 
#NB: -y flag assumes yes when apt asks if you want to install the other packages needed
RUN apt-get update
RUN apt-get install -y wget

#INSTALL erlang (huge 274MB)
RUN apt-get update
RUN apt-get install -y erlang-nox

#INSTALL rabbitmq
RUN apt-get install -y rabbitmq-server 

#ENABLE rabbitmq management interface
RUN /usr/sbin/rabbitmq-plugins enable rabbitmq_management

#ALLOW remote login
RUN echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config

#EXPOSE management interface to localhost
EXPOSE 15672 5672

#START rabbitmqserver
CMD /usr/sbin/rabbitmq-server
