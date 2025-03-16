PS1='\[\033[01;38;5;4m\]\W \[\033[01;38;5;6m\]: \[\033[00m\]'
bind -s 'set completion-ignore-case on'

alias tx='tmux new-session \; set -s escape-time 0 \; split-window -h -l 111 \; set -g status off \; attach'
alias sd='cd $(find * -type d | fzf)'
alias gs='git status'
alias gd='git diff --word-diff'
alias ga='git add -A'
alias gc='git commit'
alias gp='git push'
alias gl='git log'

function rn() {
    python3 solution.py < data/secret/subtask$1/1.in > data/secret/subtask$1/1.ans && gd --color data/secret/subtask$1/1.ans | tail -n +6 | head -n 32
    if [ -z "$(gd data/secret/subtask$1/1.ans)" ]; then
        echo "Validation successful!"
    fi
}
alias tx='TERM=xterm-256color tmux new-session \; set -s escape-time 0 \; split-window -h -l 150 \; set -g status off \; bind-key 1 send-keys -t 0 "rn 1" Enter \; bind-key 2 send-keys -t 0 "rn 2" Enter \; attach'
alias xp='hx solution.py'

