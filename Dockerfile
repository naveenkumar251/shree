FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y nginx 
RUN apt-get install -y git
WORKDIR /home
RUN git clone https://github.com/naveenkumar251/kube.git
WORKDIR /home/
COPY /home/kube/shree-inter/* /var/www/html/
EXPOSE 80 22
