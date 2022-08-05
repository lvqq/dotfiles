#!/usr/bin/env bash
# refer: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh

if [ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ] 
then
	echo "zsh-autosuggestions already exist, skipped"
else
 	echo "Start to install zsh plugin zsh-autosuggestions"
  # install zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 
fi