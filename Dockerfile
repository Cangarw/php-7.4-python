FROM php:7.4-apache

RUN apt-get update && \
    apt-get install -y python3 python3-pip

COPY ./entrypoint.sh /app/entrypoint.sh

ENTRYPOINT ["/app/docker/entrypoint.sh"]
