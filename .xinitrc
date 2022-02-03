#!/bin/bash

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

if [ -f "$HOME"/.Xresources ] ; then
    xrdb -merge "$HOME"/.Xresources
fi

"$HOME"/dots/scripts/start
"$HOME"/.fehbg 2> /dev/null

pulseaudio --start &

exec dwm
