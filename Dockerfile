ENV KONG_VERSION 2.0.2
FROM kong:${KONG_VERSION}
USER root
COPY kong.yaml /
COPY kong.conf /etc/kong/kong.conf