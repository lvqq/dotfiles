#!/usr/bin/env bash

# if macos
if [ "$(uname -s)" == "Darwin" ]
then
  if [ ! -d '/Applications/iTerm.app' -a ! -d "$HOME/Applications/iTerm.app" ]
  then
    # install iterm2
    brew install --cask iterm2
  else
    echo "iTerm2 already exists, skipped"
  fi
fi