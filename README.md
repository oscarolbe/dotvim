# Install VIM dot files

## Download

Clone this repository in your home folder and rename it as **.vim** and then create a symlink to **.vim/init.vim** called **.vimrc**.

## Dependencies

You must install the dependencies with brew or your favorite package manager, for now only ctags is necessary.

    brew install ctags vim

## Install Plugins

Run the follow **PlugInstall** inside vim for install all the plugins in .vim/vimrc:

    :PlugInstall
