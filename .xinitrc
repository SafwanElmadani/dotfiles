#!/bin/sh
#
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
#
# merge in defaults and keymaps

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#the above lines are taken from /etc/X11/xinit/xinitrc

nitrogen --restore &

picom --config ~/.config/i3/picom.conf &

#xrandr --output DVI-D-0 --off --output HDMI-0 --off --output DP-0 --mode 1920x1080 --rate 60.00 --pos 1920x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --primary --mode 1920x1080 --rate 144.00 --pos 0x0 --rotate normal --output DP-5 --off &
xrandr --output DVI-D-0 --off --output HDMI-0 --off --output DP-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-5 --off &

dunst &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

udiskie &

blueman-applet &
#blueman-tray &

nm-applet &

flameshot &

numlockx on &

volumeicon &

xset s off &

xset -dpms &

dwmblocks &

export _JAVA_AWT_WM_NONREPARENTING=1

export QT_QPA_PLATFORMTHEME=qt5ct

export BROWSER="/usr/bin/brave"

#while true; do
#   xsetroot -name "$( date +" %h %d, %Y %I:%M %p" )"
#   sleep 1m    # Update time every minute
#done &

#while true; do
#    dwm >/dev/null 2>&1
#done

#while true; do
	    # Log stderror to a file 
#	    dwm 2> ~/.dwm.log
            # No error logging
exec dwm >/dev/null 2>&1
#done
