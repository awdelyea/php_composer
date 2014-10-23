FROM dylanlindgren/docker-phpcli:latest

MAINTAINER "Adam Delyea" <adam@delyea.ca>

WORKDIR /tmp

RUN apt-get update -y && \
    apt-get install -y curl git php5-mcrypt php5-gd && \
    curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    apt-get remove --purge curl -y && \
    apt-get clean

WORKDIR /data/http/

ENTRYPOINT ["composer"]
CMD ["--help"]
