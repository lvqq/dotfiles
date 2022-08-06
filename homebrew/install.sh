#!/usr/bin/env bash
# refer: https://github.com/Homebrew/install

source ./utils.sh
# PID=`ps -ef | grep "sh bootstrap.sh" | grep -v grep | awk '{print $2}'`

# if macos
if [ "$(uname -s)" == "Darwin" ]
then
  # if brew not exist, try to install HomeBrew
  if command -v brew >/dev/null 2>&1 
  then
    echo "HomeBrew already exists, skipped"
  else
    info_success "Start to install HomeBrew now"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "${YELLOW}If installed, follow 'Next steps' and then rerun 'sh bootstrap'\\nIF not, retry later${NC}"
    # exit process
    exec zsh -l
  fi

  # update HomeBrew
  info_success "Start to update HomeBrew now"
  brew update
fi