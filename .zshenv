#With:
#ag --hidden --ignore .git -g ""
#you don't get directory names, only file names. I decided to use:
#find . -printf "%P\\n"
#for both FZF_DEFAULT_COMMAND and FZF_CTRL_T_COMMAND

export FZF_DEFAULT_COMMAND='find . -printf "%P\\n"'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND='ag --hidden -l""'
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
