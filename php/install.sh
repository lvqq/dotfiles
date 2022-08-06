#!/usr/bin/env bash

source ./utils.sh

# only support to install php on macOS
if [ "$(uname -s)" == "Darwin" ]
then
  if command -v php >/dev/null 2>&1
  then
    echo "php aleady exists, skipped"
  else
    read -p "Do you need to install php@7.4? (y/n) " -n 1
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]] 
    then
      info_success "Start to install php@7.4 now"
      brew install php@7.4
      brew link php@7.4
    fi
  fi
fi