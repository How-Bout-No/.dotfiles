echo "::Sanity Check..."
sudo apt-get update
sudo apt-get full-upgrade -y

for pkg in "${APT_PACKAGES[@]}"; do
    echo "::Installing $pkg..."
	sudo apt-get install -y $pkg
done