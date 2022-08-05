#!/usr/bin/env bash

profile_dotfiles() {
  cd ./_profile
  for profile in *
  do
    if test -f $profile
    then  
      # overwrite $profile
      read -p "Are you sure to overwrite .$profile right now? (y/n) " -n 1
      echo ""
      if [[ $REPLY =~ ^[Yy]$ ]] 
        then
        target="$HOME/.$profile"
        if test -f $target
        then
          mv "$target" "$target.backup"
          echo "Your old $target profile is moved to $target.backup"
        else
          echo "Here is no $target profile exist, a new profile is created directly"
        fi
        cp "$profile" "$target"
      fi
    fi
  done
}

profile_dotfiles