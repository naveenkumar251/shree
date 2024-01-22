FROM ubuntu:latest
RUN apt-get update && apt-get install -y nginx && apt-get install -y git && mkdir /home/naveen/
RUN git clone https://github.com/naveenkumar251/kube.git /home/naveen/kube/
RUN ls -ltr /home/naveen/ && cp -r /home/naveen/kube/shree-inter/* /var/www/html/
EXPOSE 80/tcp
