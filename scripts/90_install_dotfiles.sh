if ! [[ -d $DOTFILES ]]; then
	echo "::Cloning dotfiles..."
	git clone --recurse-submodules "$DOTREPO" "$DOTFILES"

	echo "::Stowing..."
	# hack to allow overwriting non-symlinks with stow
	stow --adopt "$DOTFILES"
	git restore "$DOTFILES"
fi
