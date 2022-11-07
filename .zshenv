#With:
#ag --hidden --ignore .git -g ""
#you don't get directory names, only file names. I decided to use:
#find . -printf "%P\\n"
#for both FZF_DEFAULT_COMMAND and FZF_CTRL_T_COMMAND
#read the wiki https://github.com/junegunn/fzf/wiki/Configuring-shell-key-bindings
#export FZF_DEFAULT_COMMAND='find ./ -printf "%P\\n"'
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
export PATH="$HOME/.local/bin:$PATH"
