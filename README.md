## My dotfiles config
Here's my dotfiles config base mostly on zsh

## Usage
```bash
# 1. clone the repo
git clone https://github.com/lvqq/dotfiles.git
# 2. enter the project
cd dotfiles
# 3. delete the directory of module u don't want to install
# 4. run bootstrap
sh bootstrap.sh
# or run the specified install command such nvm:
sh ./nvm/install.sh
```

## Shebang
Using other shebang such `Dash` may cause script errors, follow the steps to check it:
```
# 1. check which shell /bin/sh links actually
ls -l /bin/sh

# 2. If not bash, link it to bash
sudo ln -sf /bin/bash /bin/sh
```

## Support System
- [x] MacOS
- [x] Linux Debian - Ubuntu
- [ ] Linux RedHat - CentOS

## Toolkits
All toolkits are optional

### Common toolkits
- git
- zsh
- oh-my-zsh
- zsh-autosuggestions
- nvm

### Profile
- .zshrc
- .gitconfig
- .gitconfig-[workspace]

### MacOS Only
- HomeBrew
- iTerm2
- php@7.4
