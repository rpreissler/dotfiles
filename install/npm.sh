#!/usr/bin/env bash

source ./utils.sh

e_header "Installing npm modules"

packages=(
  create-react-app
  csslint
  eslint
  grunt-cli
  gulp-cli
  html-minifier
  init-module
  less
  mlb-cli
  nhl-cli
  nginx
  nodemon
  npm-check
  npm-release
  organize-raw
  sassysass
  speed-test
  svgo
  tv-schedule
  uglifycss
  uglify-js
)

npm install -g ${packages[@]}
npm config set save true
npm set init-module $(init-module --path)

e_success "Done!"
