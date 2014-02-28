bash:
	cp .jrc ~/.jrc;
	echo . .jrc >> ~/.bashrc;

zsh:
	cp .jrc ~/.jrc;
	echo . .jrc >> ~/.zshrc;

csh:
	cp .jrc ~/.jrc;
	echo . .jrc >> ~/.cshrc;

update:
	wget -r -q https://github.com/mallochine/jarvis2/raw/master/Makefile -O /dev/null
	wget -r -q https://github.com/mallochine/jarvis2/raw/master/.jrc -O /dev/null
	wget -r -q https://github.com/mallochine/jarvis2/raw/master/README.md -O /dev/null
	cp .jrc ~/.jrc
