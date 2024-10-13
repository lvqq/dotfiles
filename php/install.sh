#!/usr/bin/env bash

source ./utils.sh

install_php() {
  info_success "Start to install php@7.4 now"
  brew install php@7.4
  brew link php@7.4
}

# only support to install php on macOS
if [ "$(uname -s)" == "Darwin" ]
then
  if command -v php >/dev/null 2>&1
  then
    echo "php aleady exists, skipped"
  else
    install_confirm php@7.4 install_php
  fi
fi