#!/usr/bin/env sh

if test -d /init-scripts; then
  for FILE in /init-scripts/*.sh; do
    echo Sourcing $FILE
    . $FILE
    exec $FILE $@
  done
else
  echo "/init-scripts does not exist, skipping startup scripts"
fi
