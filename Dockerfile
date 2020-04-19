# Kong setup
ARG KONG_VERSION=2.0.2
FROM kong:${KONG_VERSION}

USER root
COPY kong.yaml /
COPY kong.conf /etc/kong/kong.conf

# Add external Oauth2
RUN apk add --no-cache libressl-dev build-base
RUN luarocks install luacrypto 0.3.2-1 --local
RUN luarocks install external-oauth
RUN luarocks install 3rd-party-oauth