
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
	        pgrep dwm || startx
fi
