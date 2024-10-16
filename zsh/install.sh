#!/usr/bin/env bash
# refer: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH

source ./utils.sh

install_zsh() {
  success_msg="${GREEN}zsh is installed successfully! You can set zsh to the default shell according to your system by following the document: \\nhttps://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#install-and-set-up-zsh-as-default${NC}"
  info_success "Start to install zsh now"
  if command -v yum >/dev/null 2>&1  
  then
    yum -y install zsh
    if [ $? -eq 0 ]; then
    echo -e "$success_msg"
    fi
  elif command -v apt >/dev/null 2>&1 
  then
    sudo apt install zsh
    if [ $? -eq 0 ]; then
    echo -e "$success_msg"
    fi
  else
    info_error "Install zsh failed, commands not support"
  fi
}

if [ ! -n "$ZSH_VERSION" ]
then
  # macOS supports zsh by default
  if [ "$(uname -s)" != "Darwin" ]
  then
    install_confirm zsh install_zsh
  fi
fi