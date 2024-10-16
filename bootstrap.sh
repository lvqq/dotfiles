#!/usr/bin/env bash

source ./utils.sh

prepare() {
  # detect curl
  if command -v curl >/dev/null 2>&1
  then
    echo ""
  else 
    info_success "Start to install curl at first"
    install_sys_pkg curl
  fi
}

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

prepare
install_dotfiles

# run profile.sh after all install.sh finished
echo "Ready to overwrite your existing profile in your home directory. Your source file will reserve. "
read -p "Are you ready? (y/n) " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]$ ]] 
then
  sh ./profile.sh
else
  info_warn "You can run 'sh profile.sh' to reawake the flow"
fi;
