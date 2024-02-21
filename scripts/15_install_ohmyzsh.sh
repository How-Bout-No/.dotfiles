if ! [[ -d "$HOME/.oh-my-zsh" ]]; then
	echo "::Installing Oh-My-Zsh..."
	RUNZSH=no sh -c "$(wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
