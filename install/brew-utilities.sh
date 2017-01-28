#!/usr/bin/env bash

source ./utils.sh

e_header "Installing brew utilities"

binaries=(
    bash
    cmake
    curl
    git
    git-extras
    git-fresh
    wget
)

e_arrow "Installing brew packages"

brew install ${binaries[@]}

brew cleanup

e_success "Done!"
