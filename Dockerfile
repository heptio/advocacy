FROM jguyomard/hugo-builder
RUN mkdir -p /go/src/github.com/heptio/advocacy
ADD . /go/src/github.com/heptio/advocacy
WORKDIR /go/src/github.com/heptio/advocacy
RUN hugo -D -F


FROM nginx:latest
MAINTAINER Kris Nova "knova@heptio.com"

# Configure nginx
RUN rm -v /etc/nginx/nginx.conf
ADD scripts/nginx.conf /etc/nginx/
COPY --from=0 /go/src/github.com/heptio/advocacy/public /var/www/html/
COPY --from=0 /go/src/github.com/heptio/advocacy/public /usr/share/nginx/html/
ADD scripts/container-startup.sh container-startup.sh
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Startup script
CMD ["sh", "container-startup.sh"]
