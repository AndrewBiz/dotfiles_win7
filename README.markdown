# anb's dotfiles for Windows system

## Install

Clone this repo into `~/.dotfiles`:

    git clone git@github.com:AndrewBiz/dotfiles_win7.git ~/.dotfiles
    

Then install the dotfiles:

    cd .dotfiles
    rake

This rake task will not replace existing files, but it will replace existing symlinks.

The dotfiles will be symlinked, e.g. `~/.bash_profile` symlinked to `~/.dotfiles/bash_profile`.


## Vim

Install plugins from submodules:

    git submodule update --init
