FROM centos:7

RUN yum update -y

RUN yum install -y sudo which curl
RUN yum install -y openssh-server openssh-clients

EXPOSE 8080 22

