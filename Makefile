bash:
	cp .jrc ~/.jrc;
	echo . ~/.jrc >> ~/.bashrc;
	echo "Restart your shell"

zsh:
	cp .jrc ~/.jrc;
	echo . ~/.jrc >> ~/.zshrc;
	echo "Restart your shell"

uninstall:
	rm ~/.jrc
	echo "You should also remove the line containing . .jrc from your *shrc file"

reinstall:
	cp .jrc ~/.jrc
