#!/usr/bin/env bash
# refer: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh

source ./utils.sh

if [ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ] 
then
	echo "zsh-autosuggestions already exist, skipped"
else
  info_success "Start to install zsh plugin zsh-autosuggestions now"
  # install zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 
fi