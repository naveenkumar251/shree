FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y nginx 
RUN apt-get install -y git
WORKDIR /tmp
RUN git clone https://github.com/naveenkumar251/kube.git
COPY /tmp/* /var/www/html/
EXPOSE 80 22
