# Rubedo data dockerfile
FROM progrium/busybox
RUN opkg-install curl
# Create volume
VOLUME /var/www/html
VOLUME /var/lib/mongo
# Copy rubedo sources
RUN curl -SL "http://github.com/WebTales/rubedo/releases/download/3.0.0/rubedo.tar.gz" -o /var/www/html/rubedo.tar.gz
RUN tar -zxvf /var/www/html/rubedo.tar.gz -C /var/www/html
RUN rm -f /var/www/html/rubedo.tar.gz