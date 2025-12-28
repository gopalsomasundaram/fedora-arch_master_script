#!/bin/bash
user="gzeph"
dir="/home/$user"
ssh-keygen -t ed25519 -f /home/gzeph/.ssh/id_ed25519 -C "gopal10092004@gmail.com" -N "" -q
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat /home/gzeph/.ssh/id_ed25519.pub | xclip -selection clipboard
