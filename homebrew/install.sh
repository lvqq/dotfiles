#!/usr/bin/env bash
# refer: https://github.com/Homebrew/install

# if macos
if [ "$(uname -s)" == "Darwin" ]
then
  # if brew not exist, try to install HomeBrew
  if command -v brew >/dev/null 2>&1 
  then
    echo "HomeBrew already exists, skipped"
  else 
    echo "Start to install HomeBrew now"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
  fi

  # update HomeBrew
  echo "Start to update HomeBrew now"
  brew update
fi