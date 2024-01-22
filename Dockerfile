FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y nginx 
RUN apt-get install -y git
RUN mkdir /home/naveen/
RUN cd /home/naveen/
RUN git clone https://github.com/naveenkumar251/kube.git /home/naveen/kube/
RUN ls -ltr /home/naveen/
RUN cp -r /home/naveen/kube/shree-inter/* /var/www/html/
EXPOSE 80 22
