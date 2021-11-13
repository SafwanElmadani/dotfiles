export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
	        pgrep dwm || startx
fi
