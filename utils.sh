#!/usr/bin/env bash

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
# No Color
NC='\033[0m' 

info_error() {
  echo "${RED}Something went wrong, please try again later. Or submit an issue in github: https://github.com/lvqq/dotfiles/issues${NC}\\n"
}

info_success() {
  echo "${GREEN}========== $1 ==========${NC}\\n"
}
