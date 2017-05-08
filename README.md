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

For tmux maybe you need this setup or only the last part

    # Gitbar from https://github.com/aurelien-rainone/tmux-gitbar
    source-file "$HOME/.tmux-gitbar/tmux-gitbar.tmux"

    # Status bar theme
    set-option -g status-bg colour235
    set-option -g status-fg colour136
    set-option -g status-attr default

    set -g status-interval 1
    set -g status-justify centre
    set -g status-left-length 140
    set -g status-right-length 140
    set -g status-left '#[fg=green]#H #[fg=black]• #[fg=green,bright]#(uname -r | cut -c 1-6)#[default]'
    set -g status-right '#[fg=green,bg=default,bright]#(tmux-mem-cpu-load) #[fg=red,dim,bg=default]#(uptime | cut -f 4-5 -d " " | cut -f 1 -d ",") #[fg=white,bg=default]%a%l:%M:%S %p#[default] #[fg=blue]%Y-%m-%d'

    # Reload
    bind r source-file ~/.tmux.conf

    # Vi Mode
    set-window-option -g mode-keys vi

    # Set window split
    bind-key v split-window -h
    bind-key b split-window

    # Shift arrow to switch windows
    bind -n S-Left  previous-window
    bind -n S-Right next-window

    # Default window title colors
    set-window-option -g window-status-fg colour244 #base0
    set-window-option -g window-status-bg default

    # Active window title colors
    set-window-option -g window-status-current-fg colour166 #orange
    set-window-option -g window-status-current-bg default

    # Pane border
    set-option -g pane-border-fg colour235 #base02
    set-option -g pane-active-border-fg colour240 #base01

    # Message text
    set-option -g message-bg colour235 #base02
    set-option -g message-fg colour166 #orange

    # Pane number display
    set-option -g display-panes-active-colour colour33 #blue
    set-option -g display-panes-colour colour166 #orange

    # Set Clock
    set-window-option -g clock-mode-colour green #green

    # Start numbering at 1
    set -g base-index 1

    # Allows for faster key repetition
    set -s escape-time 0

    # Copy paste support
    set-option -g default-command "reattach-to-user-namespace -l bash"

    # Enable mouse control (clickable windows, panes, resizable panes)
    set -g mouse on

    # Pane movement
    bind-key j command-prompt -p "join pane from:"  "join-pane -s '%%'"
    bind-key s command-prompt -p "send pane to:"  "join-pane -t '%%'"

    # VIM support
    is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
        | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
    bind-key -n C-h if-shell "$is_vim" "send-keys C-h"  "select-pane -L"
    bind-key -n C-j if-shell "$is_vim" "send-keys C-j"  "select-pane -D"
    bind-key -n C-k if-shell "$is_vim" "send-keys C-k"  "select-pane -U"
    bind-key -n C-l if-shell "$is_vim" "send-keys C-l"  "select-pane -R"
    bind-key -n C-\ if-shell "$is_vim" "send-keys C-\\" "select-pane -l"
