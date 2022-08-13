#With:
#ag --hidden --ignore .git -g ""
#you don't get directory names, only file names. I decided to use:
#find . -printf "%P\\n"
#for both FZF_DEFAULT_COMMAND and FZF_CTRL_T_COMMAND

#export FZF_DEFAULT_COMMAND='find . -printf "%P\\n"'
#Options
#export FZF_DEFAULT_OPTS='--height 100% --border --preview "bat --color=always --style=numbers --line-range=:1000 {}"'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_OPTS='--height 100% --border --preview "bat --color=always --style=numbers --line-range=:500 {}"'
#export FZF_CTRL_T_COMMAND='ag --hidden -l ""'
export FZF_CTRL_T_COMMAND='find ./ -printf "%P\\n"' #this is way faster
#search only for directory
export FZF_ALT_C_COMMAND='find ./ -type d -printf "%P\\n"'
