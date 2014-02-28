Meta Information
-------------------
Author: Alex Guo.

Contact: chessnut@outlook.com.

Program: JARVIS.

JARVIS 2.0
-------------

What's new in JARVIS 2.0 is filesystem navigation through _user-input_, instead of
a machine trying to learn how the user behaves. As for JARVIS 1.0, it works,
but not well enough.

As it turns out, it's a very natural habit for users to create
bookmarks, while it is very _unnatural_ to wait for a machine
to catch up to you. JARVIS 2.0 is a prototype for this "naturalness"
thesis.

Installation
-------------
Download the whole git repo. Run the command that corresponds to your shell:

make bash 

make zsh 

make csh

Commands
----------
"j add" will ask for what alias you want to name the current directory.

Example (bash output):

aguo@unix1:~/Documents/10605$ j add

Type an alias for the current working directory, or ^C to quit:

ml


Lastly, "j ml" will take me to ~/Documents/10605.
