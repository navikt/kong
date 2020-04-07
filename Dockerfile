ARG KONG_VER=2.0.3
FROM kong:${KONG_VER}
USER root
COPY kong.yaml /
COPY kong.conf /etc/kong/kong.conf