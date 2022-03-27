# C-a should behave the same as in Emacs
unbind-key -n C-a
# Clear the slate
source $BYOBU_PREFIX/share/byobu/keybindings/f-keys.tmux.disable

# We can send the prefix with C-x
unbind-key -n C-x
set -g prefix ^X
set -g prefix2 F12
bind x send-prefix

# M-u & M-o didn't work
bind -n M-u previous-window
bind -n M-o next-window

#bind -n M-i select-pane -U
#bind -n M-j select-pane -L
#bind -n M-k select-pane -D
#bind -n M-l select-pane -R

# TIP: Use `tmux list-keys | grep copy-mode-vi` to check keybindings

# What are the commands to navigate text like cursor[Left|Right] and cursorWord[Left|Right]?
#bind -t copy-mode M-> history-bottom
#bind -t copy-mode M-< history-top
#bind -t copy-mode M-l next-word-end
#bind -t copy-mode M-j previous-word
#bind -t copy-mode M-i cursor-up
#bind -t copy-mode M-k cursor-down
#bind -t copy-mode M-m cursor-left
#bind -t copy-mode M-. cursor-right

# Trigger copy mode with muscle memory...
bind-key -n M-i copy-mode

bind-key    -T copy-mode-vi    M-a              send-keys -X start-of-line
bind-key    -T copy-mode-vi    M-e              send-keys -X end-of-line
#bind-key    -T copy-mode    NPage             send-keys -X page-down
#bind-key    -T copy-mode    PPage             send-keys -X page-up
#https://shapeshed.com/custom-vim-bindings-in-tmux-2-4/
bind-key    -T copy-mode-vi    i              send-keys -X cursor-up
bind-key    -T copy-mode-vi    k              send-keys -X cursor-down
bind-key    -T copy-mode-vi    j              send-keys -X cursor-left
bind-key    -T copy-mode-vi    l              send-keys -X cursor-right
bind-key -T copy-mode-vi M-w send -X copy-pipe-and-cancel "xclip -in -selection clipboard"
bind-key  -n C-y              paste-buffer

#https://bazaar.launchpad.net/~kirkland/byobu/trunk/view/head:/usr/share/byobu/keybindings/f-keys.tmux

#https://stackoverflow.com/questions/50311446/how-can-i-bind-a-key-to-exit-copy-mode-in-tmux

#https://waylonwalker.com/tmux-copy-mode/

# https://gist.github.com/MohamedAlaa/2961058

# Scroll back mode
# https://superuser.com/questions/209437/how-do-i-scroll-in-tmux#209608
