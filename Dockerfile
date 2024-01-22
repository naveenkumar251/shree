FROM export ubuntu:latest=noninteractive && apt-get install -y nginx && apt-get install -y git
RUN cd /home/naveen/
RUN git clone https://github.com/naveenkumar251/kube.git
COPY /home/naveen/kube/shree-inter/* /var/www/html/
WORKDIR /var/www/html
EXPOSE 80 22
