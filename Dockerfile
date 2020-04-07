#FROM bitnami/kong:latest
FROM kong:latest
USER root
COPY kong.yaml /
COPY kong.conf /etc/kong/kong.conf
# COPY kong.conf /opt/bitnami/kong/conf/kong.conf

# RUN mkdir /usr/local/kong/

# CMD kong start