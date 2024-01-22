FROM centos:latest
RUN yum install -y httpd
RUN yum install -y git
RUN cd /home
RUN git clone https://github.com/naveenkumar251/kube.git
COPY /home/naveen/kube/shree-inter/ /var/www/html/
WORKDIR /var/www/html
EXPOSE 80 22
