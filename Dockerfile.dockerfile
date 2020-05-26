#Before proceeding to this first disable the firewall or else execute the following commands by order as follows:-
#firewall-cmd --zone=public --add-masquerade --permanent(this will allow for docker ingress and egress)
#firewall-cmd --zone=public --add-port=80/tcp(allows incoming traffic on port 80/443)
#firewall-cmd --zone=public --add-port=443/tcp
#Reload firewall to apply permanent rules
#firewall-cmd --Reload
#Restart docker 
#systemctl restart docker

FROM centos:latest

RUN yum Repolist
RUN yum install -y python36 
RUN yum install -y epel-release 
RUN yum groupinstall -y 'development tools'
RUN yum install -y python36-devel 

RUN pip3 install numpy
RUN pip3 install pandas

RUN pip3 install tensorflow
RUN pip3 install keras
RUN pip3 install pillow

RUN pip3 install opencv-python