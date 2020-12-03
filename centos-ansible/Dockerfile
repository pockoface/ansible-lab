FROM robertdebock/docker-centos-openssh

RUN yum update -y
RUN yum -y install wget; yum clean all

RUN yum --enablerepo=epel -y install python3 sshpass vim epel-release
RUN yum clean all
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python3 get-pip.py

RUN pip install pip --upgrade
RUN pip install ansible
RUN echo 'root:Docker!' | chpasswd
