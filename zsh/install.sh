#!/usr/bin/env bash
# refer: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH

if [ ! -n "$ZSH_VERSION" ]
then
  # macOS supports zsh by default
  if [ "$(uname -s)" != "Darwin" ]
  then
    success_info="zsh is installed successfully! You can set zsh to the default shell according to your system by following the document: \\nhttps://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#install-and-set-up-zsh-as-default"
    if command -v yum >/dev/null 2>&1  
    then
      yum -y install zsh
      echo "$success_info"
    elif command -v apt >/dev/null 2>&1 
    then
      apt install zsh
      echo "$success_info"
    else
      echo "Install zsh failed, commands not support"
    fi
  fi
fi