dotfiles
========

Folderstrukture is designed to use stow.

To stow/install configuration use stow in dotfiles folder:

    ~/dotfiles/stow vim

Would install my configuration for vim.

## dircolors
Add to ~/bash.rc:

    eval "`dircolors -b ~/.dircolors`"

## git
git diffs -> git diff --staged
git lg -> git log --color --graph --pretty=format...

### Remember
- git clone --mirror -> git config --bool core.bare false -> git reset --hard
- git clean
- HEAD^^^ HEAD~3
