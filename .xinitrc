#!/bin/sh
# $XConsortium: xinitrc.cpp,v 1.4 91/08/22 11:41:34 rws Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

# merge in defaults and keymaps
if [ -f $userresources ]; then
    xrdb -merge $userresources
fi

if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi

# Turn off beeps:
xset -b
# Increase the keyboard repeat-rate:
xset r rate 195 35
#
# Your own fonts-dir:
xset +fp "/home/charlie/.fonts"
# demonio de remind
# tamaño de la pantalla, sin importar que diga xorg
# xrandr -s 1280x1024
xrandr -s 1920x1080
# chica sexy para el wallpaper
# display -window root ~/imagenes/chica\ fondo\ negro.png
fbsetbg ~/imagenes/300D01940.jpg 
# escondo el mouse
unclutter -idle 5 &
setxkbmap -option terminate:ctrl_alt_bksp
xscreensaver -no-splash &

# gpg-agent --daemon --enable-ssh-support --write-env-file "${HOME}/.gnupg/gpg-agent-info-casa"

dropbox start
perl ~/bin/notify_receive.pl 'tcp!*!55021' libnotify&

# Start the window manager:
# exec ~/bin/musca
# exec rxvt
# padsp ut
# exec ~/bin/spectrwm
# exec startxfce4
exec fluxbox
# exec unity
