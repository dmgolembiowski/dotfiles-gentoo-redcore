#!/bin/fish
rm /var/run/user/1000/pueue_david.socket
rm/var/run/user/1000/pueue.pid
rm /home/david/.local/state/alacritty/alacritty-sock
alacritty -T AlacrittyPueued --socket /home/david/.local/state/alacritty/alacritty-sock --hold --command pueued --verbose
