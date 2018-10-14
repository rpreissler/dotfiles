#!/usr/bin/env bash

source ./utils.sh

e_header "Installing Aerial Screen Saver"

echo " Installing Aerial Screen Saver"

wget https://github.com/JohnCoates/Aerial/releases/download/v1.2/Aerial.zip -P ~/Downloads/
unzip ~/Downloads/Aerial.zip -d ~/Downloads/Aerial
rm -r ~/Downloads/Aerial.zip
open ~/Downloads/Aerial/Aerial.saver
