# anb's dotfiles for Windows system

## Install

Clone this repo into `~/dotfiles_win7`:

    git clone git@github.com:AndrewBiz/dotfiles_win7.git ~/.dotfiles
    

Then install the dotfiles:

    cd dotfiles_win7
    rake

This rake task will not replace existing files, but it will replace existing symlinks.

## Vim

Install plugins from submodules:

    git submodule update --init
