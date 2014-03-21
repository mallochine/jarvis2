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
"j add" will 

aguo@unix1:~/Documents/10605$ j add

Type an alias for the current working directory, or ^C to quit:

ml


"j ml" will take me to ~/Documents/10605.


"j up <filename>" will upload a file.

[ec2-user@ip-10-252-62-49 ~]$ j up

Usage: j up <filename>


[ec2-user@ip-10-252-62-49 jarvis2]$ j up README.md

Uploading...

"README.md" has been uploaded to http://alexbug.com/up/README.md.txt

You can use "j get README.md" to download the file.


"j ls" will list all the files that you have uploaded.
