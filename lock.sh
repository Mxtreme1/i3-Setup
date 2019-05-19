#!/bin/sh
#!/bin/bash
 
scrot /tmp/screen.png
# pixelate
# convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
# blur
convert /tmp/screen.png -blur 0x2 /tmp/screen.png
 
# dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
# i3lock  -I 10 -d -e -u -n -i /tmp/screen.png
if [ -f $HOME/.i3/lock.png ]
then
    convert /tmp/screen.png ~/.i3/lock.png -gravity center -composite -matte /tmp/screen.png
fi
i3lock -e -u -n -i /tmp/screen.png
