# Install VIM dot files

## Download

Clone this repository in your home folder and rename it as **.vim** and then create a symlink to **.vim/init.vim** called **.vimrc**.

## Dependencies

You must install the dependencies with brew or your favorite package manager, for now only ctags and ag is necessary.

    brew install ctags the_silver_searcher fzf vim

## Settings

Export the follow environment variables

    export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git --ignore _builds --ignore deps --ignore node_modules -g ""'

## Install Plugins

Run the follow **PlugInstall** inside vim for install all the plugins in .vim/vimrc:

    :PlugInstall
