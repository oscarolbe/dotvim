# Install VIM dot files

## Download

Clone this repository in your home folder and rename it as **.vim** and then create a symlink to **.vim/init.vim** called **.vimrc**.

## Dependencies

You must install the dependencies with brew or your favorite package manager, for now only ctags and ag is necessary.

    brew install ctags the_silver_searcher fzf reattach-to-user-namespace tmux vim

## Install Plugins

Run the follow **PlugInstall** inside vim for install all the plugins in .vim/vimrc:

    :PlugInstall

## Settings

Export the follow environment variables

    export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git --ignore _builds --ignore deps --ignore node_modules -g ""'

For tmux maybe you need add this options

    # VIM support
    is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
        | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
    bind-key -n C-h if-shell "$is_vim" "send-keys C-h"  "select-pane -L"
    bind-key -n C-j if-shell "$is_vim" "send-keys C-j"  "select-pane -D"
    bind-key -n C-k if-shell "$is_vim" "send-keys C-k"  "select-pane -U"
    bind-key -n C-l if-shell "$is_vim" "send-keys C-l"  "select-pane -R"
    bind-key -n C-\ if-shell "$is_vim" "send-keys C-\\" "select-pane -l"
