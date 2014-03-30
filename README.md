Acknowledgements
----------------
- @jsks for removing all subshells and simplifying code.
- Mr Green from ArchLinux for helping make the code more cross-shell.

Meta Information
-------------------
Author: Alex Guo.

Contact: chessnut@outlook.com.

Program: JARVIS.

Backend code: https://github.com/mallochine/jarvis2-svr

JARVIS 2.0
----------

EDIT: I recently added a whole bunch of new functionality, but I realized that
people really liked the original version of JARVIS 2, which kept things
extremely simple -- just add a bookmark, and \<boom\>, you're done.
So I reverted JARVIS 2 to its original version, and put all the new
functionality in JARVIS 3.

What's new in JARVIS 2.0 is filesystem navigation through _user-input_,
instead of a machine trying to learn how the user behaves. As it turns out, it's a
very natural habit for users to create bookmarks, while it is very _unnatural_ to wait
for a machine to catch up to you. JARVIS 2.0 is a prototype for this "naturalness"
thesis.


Installation
-------------
Download the whole git repo (git clone https://github.com/mallochine/jarvis2.git).
Run the command that corresponds to your shell:

- make bash 
- make zsh 
- make csh

```bash
aguo@unix1:~/space$ git clone https://github.com/mallochine/jarvis2.git
Initialized empty Git repository in /afs/andrew.cmu.edu/usr9/aguo/space/jarvis2/.git/
remote: Counting objects: 252, done.
remote: Compressing objects: 100% (136/136), done.
remote: Total 252 (delta 117), reused 247 (delta 112)
Receiving objects: 100% (252/252), 29.74 KiB, done.
Resolving deltas: 100% (117/117), done.
aguo@unix1:~/space$ cd jarvis2
aguo@unix1:~/space/jarvis2$ make bash
cp .jrc ~/.jrc;
echo . .jrc >> ~/.bashrc;
echo "Restart your shell"
Restart your shell
```

Commands
----------
### j add

Add the current directory as a bookmark.

```bash
aguo@unix1:~/Documents/10605$ j add
Type an alias for the current working directory, or ^C to quit:
ml
```

### j \<bookmark\>

Go to the directory corresponding to the bookmark. (Credits to jsks
for significantly simplying the code here.).

```bash
aguo@unix1:~$ j ml
aguo@unix1:~/Documents/10605$
```

### j edit, j vim

Edits your bookmarks using your shell's default editor (kudos to Mr Green for
writing this!).

```bash
[ec2-user@ip-10-252-62-49 ~]$ j edit
```

```bash
  1 bics=/var/bics
  2 newpl=/var/bics/newplayers
  3 src=/home/ec2-user/space/bics-current/src
  4 stats=/var/bics/data/stats
  5 players=/var/bics/players
  6 jarvis2=/home/ec2-user/space/jarvis2
  7 html=/var/www/html
  8 debug=/var/bics-debug
  9 proxies=/home/ec2-user/space/fics-proxy
~
~
~
~
~
~
~
~
~

```

### j all

Lists all the bookmarks you have.

```bash

[ec2-user@ip-10-252-62-49 ~]$ j all
bics=/var/bics
newpl=/var/bics/newplayers
src=/home/ec2-user/space/bics-current/src
stats=/var/bics/data/stats
players=/var/bics/players
jarvis2=/home/ec2-user/space/jarvis2
html=/var/www/html
debug=/var/bics-debug
proxies=/home/ec2-user/space/fics-proxy
```

We would like help with...
---------------------------
- Getting JARVIS2 into the packagement systems of various Linux distributions,
such as apt-get (ubuntu), pacman (archlinux), and more!

See Also
----------

- The server that helps run JARVIS 3: https://github.com/mallochine/jarvis2-svr
- JARVIS 3, which enables you to interact with a remote filesystem. https://github.com/mallochine/jarvis3
