Meta Information
-------------------
Author: Alex Guo.

Contact: chessnut@outlook.com.

Program: JARVIS.

JARVIS 2.0 Change Log
---------------------

3/20/2014: What's new 

2/28/2014: What's new in JARVIS 2.0 is filesystem navigation through _user-input_,
instead of a machine trying to learn how the user behaves. As it turns out, it's a
very natural habit for users to create bookmarks, while it is very _unnatural_ to wait
for a machine to catch up to you. JARVIS 2.0 is a prototype for this "naturalness"
thesis.

What's new in recent updates to JARVIS 2.0 is that you can now easily integrate your
CLI environment into a remote server.



Installation
-------------
Download the whole git repo (git clone http://github.com/mallochine/jarvis2.git).
Run the command that corresponds to your shell:

make bash 

make zsh 

make csh

Commands
----------
### j add

```bash
aguo@unix1:~/Documents/10605$ j add
Type an alias for the current working directory, or ^C to quit:
ml
```

### j \<bookmark\>

```bash
aguo@unix1:~$ j ml
aguo@unix1:~/Documents/10605$
```

### j up \<filename\>

```bash
[ec2-user@ip-10-252-62-49 jarvis2]$ j up README.md
Uploading...
"README.md" has been uploaded to http://alexbug.com/up/README.md.txt
You can use "j get README.md" to download the file.
```

### j ls

```bash
aguo@unix1:~/Documents/10605$ j ls
README.md.txt
```

### j update

Updates your JARVIS to the current source code. Does not yet check on its own for whether
there are any updates.

```bash
aguo@unix1:~$ j update
Updated.
```

### j get

```bash
aguo@unix1:~/space$ j get README.md
Downloading...
--2014-03-20 21:50:06--  http://alexbug.com/up/README.md.txt
Resolving alexbug.com... 54.214.45.118
Connecting to alexbug.com|54.214.45.118|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 929 [text/plain]
Saving to: `README.md'

100%[======================================================================================================================================================>] 929         --.-K/s   in 0s

2014-03-20 21:50:06 (145 MB/s) - `README.md' saved [929/929]
```
