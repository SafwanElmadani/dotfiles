. "$HOME/.cargo/env"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#Options
export FZF_DEFAULT_OPTS='--border --no-reverse --no-height'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_OPTS='--border --preview "bat --color=always --style=numbers --line-range=:1000 {}"'
#export FZF_CTRL_T_COMMAND='ag --hidden -l ""'
export FZF_CTRL_T_COMMAND='find ./ -printf "%P\\n"' #this is way faster
#search only for directory
export FZF_ALT_C_COMMAND='find ./ -type d -printf "%P\\n"'

#add colors to the man page
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANPAGER='nvim +Man!'

#add path to local bin
export PATH="/home/safwan/.local/bin:$PATH"

export EDITOR=nvim

#path for texlive binaries
export PATH="/usr/local/texlive/2023/bin/x86_64-linux:$PATH"
