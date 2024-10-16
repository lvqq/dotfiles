#!/usr/bin/env bash
# refer: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH

source ./utils.sh

install_vim() {
  info_success "Start to install vim now"
  install_sys_pkg vim
}

# macOS supports vim by default
if [ "$(uname -s)" != "Darwin" ]
then
  if command -v vim >/dev/null 2>&1
  then
    echo "vim aleady exists, skipped"
  else 
    install_confirm vim install_vim
  fi
fi