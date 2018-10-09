FROM jguyomard/hugo-builder
MAINTAINER Kris Nova "knova@heptio.com"
RUN mkdir -p /go/src/github.com/heptio/advocacy
ADD . /go/src/github.com/heptio/advocacy
WORKDIR /go/src/github.com/heptio/advocacy
CMD ["sh", "scripts/container-startup.sh"]