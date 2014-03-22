bash:
	cp .jrc ~/.jrc;
	. ~/.jrc
	echo . .jrc >> ~/.bashrc;

zsh:
	cp .jrc ~/.jrc;
	. ~/.jrc
	echo . .jrc >> ~/.zshrc;

csh:
	cp .jrc ~/.jrc;
	. ~/.jrc
	echo . .jrc >> ~/.cshrc;

update:
	wget -r -q https://github.com/mallochine/jarvis2/raw/master/Makefile -O Makefile
	wget -r -q https://github.com/mallochine/jarvis2/raw/master/.jrc -O .jrc
	wget -r -q https://github.com/mallochine/jarvis2/raw/master/README.md -O README.md
	cp .jrc ~/.jrc
	. ~/.jrc

uninstall:
	rm ~/.jrc
	echo "You should also remove the line containing . .jrc from your *shrc file"

reinstall:
	cp .jrc ~/.jrc
