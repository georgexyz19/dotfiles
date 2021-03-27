# dotfiles
vimrc dot files

https://stackoverflow.com/questions/18197705/adding-your-vim-vimrc-to-github-aka-dot-files

After git clone the repo, run $python3 newlinks.py to create new hard links in home dir. 

3/26/2021

Added a .plugin.vimrc file and updated .bashrc and .vimrc. 
Also added alias for `vimplugin` and `pytree`

Now I am doing file copy only. No hard link involved.  Do not be too smart!
new computer: git clone -> cp to home dir
Revise setting file: cp from home dir -> git repor dir

9/18/2020

Thought about adding .gitconfig file to version control.  But the file has 
my personal email address in it, so it is better not to publish it on a repo.

8/17/2020

Made a big change to the repo.  Change the original .simple to .vimrc, and
change original .vimrc to .python.  The .python setting has lots of plugins
enabled.  It seems that some plugins do not work correctly.  I do not know which
one works well and which one does not. 
