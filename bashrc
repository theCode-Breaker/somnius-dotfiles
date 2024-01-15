#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

## my additions
alias tb="nc termbin.com 9999"
alias upall="foot -e bash $HOME/.config/hypr/scripts/upall"
