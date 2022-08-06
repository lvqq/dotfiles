#!/usr/bin/env bash

source ./utils.sh

# if macos
if [ "$(uname -s)" == "Darwin" ]
then
  if [ ! -d '/Applications/iTerm.app' -a ! -d "$HOME/Applications/iTerm.app" ]
  then
    # install iterm2
    info_success "Start to install iTerm2 now"
    brew install --cask iterm2
  else
    echo "iTerm2 already exists, skipped"
  fi
fi