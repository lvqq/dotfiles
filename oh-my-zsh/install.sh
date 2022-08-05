#!/usr/bin/env bash
# refer: https://github.com/ohmyzsh/ohmyzsh#basic-installation

if [ -d ~/.oh-my-zsh ] 
then
	echo "oh-my-zsh already exist, skipped"
else
 	echo "Start to install on-my-zsh"
  # install oh-my-zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
