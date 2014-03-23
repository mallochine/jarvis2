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

Go to the directory corresponding to the bookmark.

```bash
aguo@unix1:~$ j ml
aguo@unix1:~/Documents/10605$
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

- JARVIS 3, which enables you to interact with a remote filesystem. https://github.com/mallochine/jarvis3
