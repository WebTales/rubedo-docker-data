# Rubedo data dockerfile
FROM centos:centos7
# Get rubedo sources
RUN mkdir -p /var/lib/mongo
# Create volume
VOLUME /var/lib/mongo
CMD ["/bin/bash"]