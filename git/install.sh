#!/usr/bin/env bash
# refer: https://git-scm.com/download/linux

source ./utils.sh

user_config() {
  # global git config
  echo "[global]Type in your name of git config:"
  read user_global_name

  echo "[global]Type in your email address of git config:"
  read user_global_email

  echo "\\n[user]\\n  name = $user_global_name\\n  email = $user_global_email" >> ./_profile/gitconfig
}

workspace_config() {
  # workspace git config
  read -p "Do you need to config git of a workspace? (y/n) " -n 1
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]] 
  then
    echo "[workspace]Type in your workspace name:"
    read workspace

    echo "[$workspace]Type in your name of git config:"
    read user_workspace_name

    echo "[$workspace]Type in your email address of git config:"
    read user_workspace_email


    echo "[user]\\n  name = $user_workspace_name\\n  email = $user_workspace_email\\n" >> "./_profile/gitconfig-$workspace"
    echo "[includeIf "gitdir:~/$workspace/"]\\n  path = ~/.gitconfig-$workspace\\n" >> "./_profile/gitconfig"
    echo "Now projects in the ~/$workspace/ directory uses git config of $user_workspace_name/$user_workspace_email"
  fi
}

# macOS support git by default
if [ "$(uname -s)" != "Darwin" ]
then
  if command -v git >/dev/null 2>&1
  then
    echo "git aleady exists, skipped"
  else
    # install git
    info_success "Start to install git now"
    if command -v yum >/dev/null 2>&1  
    then
      yum install git
    elif command -v apt >/dev/null 2>&1 
    then
      apt install git
    else
      echo "${RED}Install git failed, commands not support${NC}\\n"
    fi
  fi
fi

read -p "Do you need to config global git? (y/n) " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]$ ]] 
then
  user_config
  workspace_config
fi