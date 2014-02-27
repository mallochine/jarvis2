JARVIS 2.0
-------------

What I meant for this version to be different is for expedient
filesystem navigation through _user_input_, instead of having
a machine try to learn how the user behaves. JARVIS 1.0 works,
but not well enough to change behavior.

As it turns out, it's a very natural habit for users to create
bookmarks, while it is very _unnatural_ to wait for a machine
to catch up to you. JARVIS 2.0 is a prototype for this "naturalness"
thesis.

Commands:
----------
"j add" will ask for what alias you want to name the current directory.
Example (bash output):
aguo@unix1:~/Documents/10605$ j add
Type an alias for the current working directory, or ^C to quit:
ml

And now, ml is aliased with ~/Documents/10605. Lastly, "j ml" will take
me to ~/Documents/10605.
