FROM centos:centos7
MAINTAINER Alessandro Arrichiello

RUN yum -y install openssh-server

RUN mkdir -p /sftpd
RUN chmod 777 /sftpd
RUN groupadd --system sftp

ADD . /root
WORKDIR /root

EXPOSE 2022

CMD ["/bin/bash", "run"]
