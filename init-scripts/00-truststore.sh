#!/usr/bin/env sh

if test -r "${NAV_TRUSTSTORE_PATH}"; then
  if ! keytool -list -keystore ${NAV_TRUSTSTORE_PATH} -storepass "${NAV_TRUSTSTORE_PASSWORD}" >/dev/null; then
    echo Truststore is corrupt, or bad password
    exit 1
  fi
  export KONG_SSL_CERT="${NAV_TRUSTSTORE_PATH}"
  export KONG_SSL_CERT_KEY="${NAV_TRUSTSTORE_PASSWORD}"
fi
