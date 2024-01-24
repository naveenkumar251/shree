FROM ubuntu:latest
RUN apt-get update && apt-get install -y nginx && apt-get install -y git && mkdir /home/naveen/
RUN git clone https://github.com/naveenkumar251/kube.git /home/naveen/kube/
RUN ls -ltr /home/naveen/ && cp -r /home/naveen/kube/shree-inter/* /var/www/html/
RUN service nginx start
EXPOSE 80/tcp
FROM centos:latest
RUN yum update && yum install -y httpd && mkdir /home/naveen/
RUN service httpd start
