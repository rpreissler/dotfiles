#!/usr/bin/env bash

source ./utils.sh

e_header "Installing Canon 5D Mark IV EOS Utility"

echo " Installing Canon 5D Mark IV EOS Utility"

wget http://pdisp01.c-wss.com/gdl/WWUFORedirectTarget.do?id=MDIwMDAwNTQ0MzAx&cmp=ABR&lang=EN -P ~/Downloads/
open ~/Downloads/eum3.8.20-installer.dmg.zip

e_success "Done!"