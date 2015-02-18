# Rubedo data dockerfile
FROM busybox
# Copy rubedo sources
RUN curl -SL "http://github.com/WebTales/rubedo/releases/download/3.0.0/rubedo.tar.gz" -o /var/www/html/rubedo.tar.gz
RUN tar -zxvf /var/www/html/rubedo.tar.gz -C /var/www/html
RUN rm -f /var/www/html/rubedo.tar.gz