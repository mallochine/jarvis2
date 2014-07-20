Acknowledgements
----------------
- @jsks and Mr Green from ArchLinux for helping improve this code a lot!

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

```bash
aguo@unix1:~/space$ git clone https://github.com/mallochine/jarvis2.git
Initialized empty Git repository in /afs/andrew.cmu.edu/usr9/aguo/space/jarvis2/.git/
remote: Counting objects: 252, done.
remote: Compressing objects: 100% (136/136), done.
remote: Total 252 (delta 117), reused 247 (delta 112)
Receiving objects: 100% (252/252), 29.74 KiB, done.
Resolving deltas: 100% (117/117), done.
aguo@unix1:~/space$
aguo@unix1:~/space$
aguo@unix1:~/space$
aguo@unix1:~/space$ cd jarvis2
aguo@unix1:~/space/jarvis2$ make bash
cp .jrc ~/.jrc;
echo . ~/.jrc >> ~/.bashrc;
echo "Restart your shell"
Restart your shell
```

Getting Started
-----------------

There are only a few commands you need to know in order to get started.

Use the "j add \<alias\>" to create a bookmark for the directory you are currently in.

Then use "j \<alias\>" to jump to that bookmark.

Commands
----------
### j add, j +

Add the current directory as a bookmark.

```bash
aguo@unix4:~/Documents/10605$ j add
Type an alias for the current working directory, or ^C to quit:
ml
"ml" added as a bookmark.
```

```bash
[ec2-user@ip-10-252-62-49 bics]$ j + bics
"bics" added as a bookmark.
```

### j add \<file\>, j + \<file\>

Adds the \<file\> as a bookmark.

```bash
[ec2-user@ip-10-232-62-140 jarvis2]$ j add
Type an alias for /home/ec2-user/space/jarvis2, or ^C to quit:
jrc
"jrc" added as a bookmark
```

### j \<bookmark\>

(Credits to jsks for significantly simplying the code here.).

There are two cases:

- If the bookmark is for a directory, then cd there.
- If the bookmark is for a file, then open the file for edit.

Case 1:
```bash
aguo@unix1:~$ j ml
/afs/andrew.cmu.edu/usr9/aguo/Documents/10605
aguo@unix1:~/Documents/10605$
```

Case 2:

```bash
aguo@unix2:~$ j readme
```

```bash
  1 Acknowledgements
  2 ----------------
  3 - @jsks for removing all subshells and simplifying code.
  4 - Mr Green from ArchLinux for helping make the code more cross-shell.
  5 
  6 ...
```

### j del, j -, j del \<bookmark\>, j - \<bookmark\>

(Thanks to Mr Green for conceiving the idea and writing code for this!).

Delete a bookmark.

```bash
aguo@unix4:~$ j -
Type an alias you wish to delete, or ^C to quit:
hadoop
"hadoop" deleted.
```

```bash
aguo@unix2:~$ j - hadoop
"hadoop" deleted.
```

### j find

Greps the bookmarks for a given query. If a query is given, then jarvis
greps "\<query\>". Otherwise, jarvis will grep using $PWD.

```bash
[ec2-user@ip-10-232-62-140 ~]$ j find jrc
4:jrc=/home/ec2-user/space/jarvis2
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

### j help

Displays help info.

```bash
Usage: j [CMD] <file or dir> <bookmark>

Commands
  add | +   Add a bookmark
  del | -   Delete a bookmark
  all       List all bookmarks
  help      Print this help message

If no command is given, j jumps to the given bookmarks.
```

We would like help with...
---------------------------
- Updating our wiki: https://github.com/mallochine/jarvis2/wiki/jrc---Documentation
- Getting JARVIS2 into the packagement systems of various Linux distributions,
such as apt-get (ubuntu), pacman (archlinux), and more!
- Any suggestions to make jarvis2 even simpler.

See Also
----------

- The server that helps run JARVIS 3: https://github.com/mallochine/jarvis2-svr
- JARVIS 3, which enables you to interact with a remote filesystem. https://github.com/mallochine/jarvis3
