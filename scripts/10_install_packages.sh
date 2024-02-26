for pkg in "${APT_PACKAGES[@]}"; do
    echo "::Installing $pkg..."
	sudo apt-get install -y $pkg
done