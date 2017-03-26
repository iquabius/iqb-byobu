# Send prefix with C-a
unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix

bind -n M-i select-pane -U
bind -n M-j select-pane -L
bind -n M-k select-pane -D
bind -n M-l select-pane -R

