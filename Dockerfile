FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y nginx 
RUN apt-get install -y git
RUN git clone https://github.com/naveenkumar251/kube.git
COPY ./kube/shree-inter/* /var/www/html/
EXPOSE 80 22
