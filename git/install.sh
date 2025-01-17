#!/usr/bin/env bash
# refer: https://git-scm.com/download/linux

source ./utils.sh

user_config() {
  # global git config
  echo "[global]Type in your name of git config:"
  read user_global_name

  echo "[global]Type in your email address of git config:"
  read user_global_email

  echo -e "\\n[user]\\n  name = $user_global_name\\n  email = $user_global_email" >> ./_profile/gitconfig
}

workspace_config() {
  # workspace git config
  read -p "Do you want to config git of a workspace? (y/n) " -n 1
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]] 
  then
    echo "[workspace]Type in your workspace name:"
    read workspace

    echo "[$workspace]Type in your name of git config:"
    read user_workspace_name

    echo "[$workspace]Type in your email address of git config:"
    read user_workspace_email


    echo -e "[user]\\n  name = $user_workspace_name\\n  email = $user_workspace_email\\n" >> "./_profile/gitconfig-$workspace"
    echo -e "[includeIf "gitdir:~/$workspace/"]\\n  path = ~/.gitconfig-$workspace\\n" >> "./_profile/gitconfig"
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
    install_sys_pkg git
  fi
fi

read -p "Do you want to config global git? (y/n) " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]$ ]] 
then
  user_config
  workspace_config
fi