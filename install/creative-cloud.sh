#!/usr/bin/env bash

source ./utils.sh

e_header "Installing Adobe Creative Cloud"

echo "Installing Adobe Creative Cloud"

wget https://creative.adobe.com/products/download/creative-cloud -P ~/Downloads/
open ~/Downloads/creative-cloud
