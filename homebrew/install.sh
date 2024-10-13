#!/usr/bin/env bash
# refer: https://github.com/Homebrew/install

source ./utils.sh
# PID=`ps -ef | grep "sh bootstrap.sh" | grep -v grep | awk '{print $2}'`

install_homebrew() {
  info_success "Start to install HomeBrew now"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  info_warn "If installed, follow 'Next steps' and then rerun 'sh bootstrap'\\nIF not, retry later"
  # exit process
  exec zsh -l
}

# if macos
if [ "$(uname -s)" == "Darwin" ]
then
  # if brew not exist, try to install HomeBrew
  if command -v brew >/dev/null 2>&1 
  then
    echo "HomeBrew already exists, skipped"
  else
    install_confirm HomeBrew install_homebrew
  fi
fi