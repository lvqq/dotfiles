#!/bin/zsh

source ./utils.sh

if command -v nvm >/dev/null 2>&1
then
  echo "nvm aleady exists, skipped"
else
  read -p "Do you need to install nvm@0.39.1? (y/n) " -n 1
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]] 
  then
    info_success "Start to install nvm now"
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash 
    # if [ $? -ne 0 ]
    # then
    #   echo "${GREEN}nvm is installed successfully\\n${NC}"
    # fi
    # set nvm profile in zshrc
    SOURCE_STR="\\nexport NVM_DIR=\"\$HOME/.nvm\"\\n[ -s \"\$NVM_DIR/nvm.sh\" ] && \\. \"\$NVM_DIR/nvm.sh\"  # This loads nvm\\n"
    COMPLETION_STR='[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion\n'
    echo "$SOURCE_STR$COMPLETION_STR" >> ./_profile/zshrc
  fi
fi