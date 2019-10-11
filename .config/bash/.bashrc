# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Set location of commands history file.
export HISTFILE=~/.cache/bash/bash_history


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
