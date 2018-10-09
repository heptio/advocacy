FROM nginx:latest
MAINTAINER Kris Nova "knova@heptio.com"

# Configure nginx
RUN rm -v /etc/nginx/nginx.conf
ADD scripts/nginx.conf /etc/nginx/
ADD ./public /var/www/html/
ADD ./public /usr/share/nginx/html/
ADD scripts/container-startup.sh container-startup.sh
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Startup script
CMD ["sh", "container-startup.sh"]
