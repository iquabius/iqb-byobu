# C-a should behave the same as in Emacs
unbind-key -n C-a

# We can send the prefix with C-x
unbind-key -n C-x
set -g prefix ^X
set -g prefix2 F12
bind x send-prefix

# M-u & M-o didn't work
bind -n C-M-u previous-window
bind -n C-M-o next-window

bind -n M-i select-pane -U
bind -n M-j select-pane -L
bind -n M-k select-pane -D
bind -n M-l select-pane -R

