# Rubedo data dockerfile
FROM centos:centos7
RUN yum install -y wget tar; yum -y clean all
# Get rubedo sources
RUN mkdir -p /var/www/html
RUN mkdir -p /var/lib/mongo
RUN wget -O /var/www/html/rubedo.tar.gz https://github.com/WebTales/rubedo/releases/download/3.0.0/rubedo.tar.gz
RUN tar -zxvf /var/www/html/rubedo.tar.gz -C /var/www/html
RUN rm -f /var/www/html/rubedo.tar.gz
# Create volume
VOLUME /var/www/html
VOLUME /var/lib/mongo
CMD ["/bin/bash"]