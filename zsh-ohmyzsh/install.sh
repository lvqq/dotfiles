#!/usr/bin/env bash
# refer: https://github.com/ohmyzsh/ohmyzsh#basic-installation

source ./utils.sh

if [ -d ~/.oh-my-zsh ] 
then
	echo "oh-my-zsh already exist, skipped"
else
  info_success "Start to install oh-my-zsh now"
  echo "${YELLOW}The install command will exit the process, you can rerun 'sh bootstrap' after that${NC}\\n"
  # install oh-my-zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
