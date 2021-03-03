#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias ll='ls -ltr --color=auto'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias py3.8='pyenv shell 3.8.6'
alias ve3.8='source /home/safwan/virenv/base3.8/bin/activate'


eval "$(pyenv init -)"
eval "$(starship init bash)"
neofetch
