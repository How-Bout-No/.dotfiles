if ! [[ -x "$(command -v pfetch)" ]]; then
	echo "::Installing pfetch..."
	git clone https://github.com/OldWorldOrdr/pfetch.git /tmp/pfetch
	cd /tmp/pfetch
	sudo make install
	cd "$(pwd)"
fi