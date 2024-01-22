FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y nginx 
RUN apt-get install -y git
RUN cd /home/naveen/
RUN git clone https://github.com/naveenkumar251/kube.git
COPY /home/naveen/kube/shree-inter/* /var/www/html/
WORKDIR /var/www/html
EXPOSE 80 22
