#!/bin/bash

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

$HOME/dots/scripts/start
$HOME/.fehbg 2> /dev/null

pulseaudio --start &

exec dwm
