# Rubedo data dockerfile
FROM centos:centos7
RUN yum install -y git; yum -y clean all
RUN mkdir -p /var/lib/mongo
# Create volume
VOLUME /var/lib/mongo
CMD ["/bin/bash"]