#!/usr/bin/env bash

source ./utils.sh

e_header "Installing Audacity"

echo " Installing Audacity"

wget https://www.fosshub.com/Audacity.html/audacity-macosx-ub-2.1.2.dmg -P ~/Downloads/
open ~/Downloads/audacity-macosx-ub-2.1.2.dmg

e_success "Done!"