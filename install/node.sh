#!/usr/bin/env bash

source ./utils.sh

e_header "Installing node, nvm, and npm"

# For more info, see here https://gist.github.com/DanHerbert/9520689
brew install node

curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
. ~/.nvm/nvm.sh > /dev/null
nvm install 6
nvm alias stable 6
nvm alias default 6
nvm use 6

# fix npm permissions
sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}

e_success "Done!"