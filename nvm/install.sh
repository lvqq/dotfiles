#!/bin/zsh

if command -v nvm >/dev/null 2>&1
then
  echo "nvm aleady exists, skipped"
else
  command -v nvm
  nvm -v
  echo "nvm does not exist, cannot skipped"
  read -p "Do you need to install nvm@0.39.1? (y/n) " -n 1
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]] 
  then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash 
    # set nvm profile in zshrc
    SOURCE_STR="\\nexport NVM_DIR=\"\$HOME/.nvm\"\\n[ -s \"\$NVM_DIR/nvm.sh\" ] && \\. \"\$NVM_DIR/nvm.sh\"  # This loads nvm\\n"
    COMPLETION_STR='[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion\n'
    echo "$SOURCE_STR$COMPLETION_STR" >> ./_profile/zshrc
  fi
fi