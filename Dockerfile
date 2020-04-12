# Kong setup
ARG KONG_VERSION=2.0.2
FROM kong:${KONG_VERSION}
USER root
COPY kong.yaml /
COPY kong.conf /etc/kong/kong.conf

# init some envs
COPY init-scripts/ /init-scripts
COPY entrypoint.sh/ /entrypoint.sh
RUN chmod +x /init-scripts
RUN chmod +x /entrypoint.sh
RUN /entrypoint.sh

# Add external Oauth2
RUN apk add --no-cache libressl-dev build-base
RUN luarocks install luacrypto 0.3.2-1 --local
RUN luarocks install 3rd-party-oauth