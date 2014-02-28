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
	wget -r https://github.com/mallochine/jarvis2/raw/master/Makefile
	wget -r https://github.com/mallochine/jarvis2/raw/master/.jrc
	wget -r https://github.com/mallochine/jarvis2/raw/master/README.md
	cp .jrc ~/.jrc
