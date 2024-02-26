#!/bin/bash
# To run via wget:
#   wget -qO- https://raw.githubusercontent.com/How-Bout-No/.dotfiles/main/setup.sh | bash
# To run via curl:
#   curl -fsSL https://raw.githubusercontent.com/How-Bout-No/.dotfiles/main/setup.sh | bash

APT_PACKAGES=(  # Default list of packages to install
  "cargo"
  "curl"
  "git"
  "lsd"
  "make"
  "micro"
  "stow"
  "wget"
  "zsh"
)
CONFIG="$HOME/.config"  # Default config directory
DOTFILES="$HOME/.dotfiles"  # Directory to hold dotfiles
DOTREPO="https://github.com/How-Bout-No/.dotfiles.git" # Git repo to pull dotfiles from

sudo apt-get update
sudo apt-get full-upgrade -y

# Run all install scripts
for script in scripts/*.sh; do
  echo "::Running $(basename $script)..."
  chmod +x $script
  . ./$script
  chmod -x $script
done