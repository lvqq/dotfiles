#!/usr/bin/env bash

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
# No Color
NC='\033[0m' 

info_error() {
  echo -e "${RED}$1${NC}\\n"
}

info_warn() {
  echo -e "${YELLOW}$1${NC}\\n"
}

info_success() {
  echo -e "${GREEN}========== $1 ==========${NC}\\n"
}

install_confirm() {
  read -p "Do you want to install $1? (y/n) " -n 1
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]] 
  then
    "$2"
  fi
}

install_sys_pkg() {
  if command -v yum >/dev/null 2>&1  
  then
    yum -y install $1
  elif command -v apt >/dev/null 2>&1 
  then
    sudo apt install $1
  else
    info_error "Install $1 failed, commands not support"
  fi
}
