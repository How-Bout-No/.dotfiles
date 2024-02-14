#!/bin/bash
if [ "$(id -u)" -ne 0 ]; then echo "Please run as root." >&2; exit 1; fi
####
## <settings>
dotdir="$HOME/.dotfiles"
dotrepo=""
## </settings>
####

echo.
echo "::Sanity Check..."
apt-get update
apt-get full-upgrade -y

echo.
echo "::Installing Packages..."
apt-get install -y \
	avahi-daemon \
	curl \
	wget \
	git \
	stow \
	lsd \
	zsh
	
echo.
echo "::Changing shell to zsh..."
chsh -s `which zsh`

echo.
echo "::Installing Oh-My-Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#echo.
#echo "::Installing NeoVim..."
#wget "https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz"
#tar -xzvf nvim-linux64.tar.gz

echo.
echo "::Cloning dotfiles..."
git clone "$dotrepo" "$dotdir"

echo.
echo "::Stowing..."
# hack to allow overwriting non-symlinks with stow
stow --adopt "$dotdir"
git restore "$dotdir"
