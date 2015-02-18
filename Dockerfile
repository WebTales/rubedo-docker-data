# Rubedo data dockerfile
FROM centos:centos7
RUN yum install -y wget tar
# Create volume
VOLUME /var/www/html
VOLUME /var/lib/mongo
# Get rubedo sources
RUN wget -O /var/www/html/rubedo.tar.gz https://github.com/WebTales/rubedo/releases/download/3.0.0/rubedo.tar.gz
RUN tar -zxvf /var/www/html/rubedo.tar.gz -C /var/www/html
RUN rm -f /var/www/html/rubedo.tar.gz