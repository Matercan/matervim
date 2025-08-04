#!/bin/bash

MATERVIM_SOURCE="$(dirname "$(readlink -f "$0")")"

# Prompt the user
if [ -d ~/.config/nvim ]; then
  echo "This will remove your existing neovim configuration"
  read -p "Continue (y/n)? " choice
  case "$choice" in 
    y|Y ) rm -r ~/.config/nvim/; echo "configuration removed";;
    n|N ) echo "Aborting installation"; exit 0;; 
    * ) echo "Invalid response, aborting"; exit 1;;
  esac
fi

# Replace the configuration
mkdir -p ~/.config/nvim/
mkdir -p ~/.config/nvim/lua

cp "${MATERVIM_SOURCE}/lazy-lock.json" ~/.config/nvim/
cp "${MATERVIM_SOURCE}/init.lua" ~/.config/nvim/
cp -r "${MATERVIM_SOURCE}/lua/." ~/.config/nvim/lua/

echo "Neovim configuration successfully installed"
