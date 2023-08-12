#!/bin/sh
#exec startplasma-x11
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

dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

nitrogen --restore &

picom --config /home/safwan/.config/picom.conf &

/home/safwan/.local/bin/homesetup.sh &

dunst &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

udiskie -t &

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

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export GPG_TTY=$(tty)

gpgconf --launch gpg-agent # start gpg-agent, if it isn't started already
gpg-connect-agent updatestartuptty /bye >> /dev/null

#while true; do
#   xsetroot -name "$( date +" %h %d, %Y %I:%M %p" )"
#   sleep 1m    # Update time every minute
#done &

#while true; do
#    dwm >/dev/null 2>&1
#done

#while true; do
            # Log stderror to a file 
#           dwm 2> ~/.dwm.log
            # No error logging
exec dwm >/dev/null 2>&1
#done

