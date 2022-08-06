#This is set once upon login
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

eval "$(pyenv init --path)"

if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
	        pgrep dwm || startx
fi
