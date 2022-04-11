#!/bin/bash

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

if [ -f "$HOME"/.Xresources ] ; then
    xrdb "$HOME"/.Xresources
fi

pulseaudio --start &

"$HOME"/.fehbg 2>/dev/null
"$HOME"/dots/scripts/dwmbar 2>/dev/null

xinput --disable 10

exec dwm 2>/dev/null
