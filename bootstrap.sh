#!/usr/bin/env bash

source ./utils.sh

install_dotfiles() {
  for plugin in ./*
  do
    if test -d $plugin
    then
      # run $plugin/install
      if test -f $plugin/install.sh
      then
        sh $plugin/install.sh
      fi
    fi
  done
}

install_dotfiles

# run profile.sh after all install.sh finished
echo "Ready to overwrite your existing profile in your home directory. Your source file will reserve. "
read -p "Are you ready? (y/n) " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]$ ]] 
then
  sh ./profile.sh
else
  echo "${YELLOW}You can run 'sh profile.sh' to reawake the flow${NC}"
fi;
