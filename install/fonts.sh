#!/usr/bin/env bash

source ./utils.sh

e_header "Installing fonts"

wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip -O source-code-pro.zip -P ~/Downloads/
unzip source-code-pro.zip -d source-code-pro
cp source-code-pro/TTF/ /Library/Fonts/
rm -r source-code-pro*

e_success "Done!"