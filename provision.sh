#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt-get update -y

command -v npm &>/dev/null || {
  gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv 1655A0AB68576280
  gpg --export --armor 1655A0AB68576280 | sudo apt-key add -
  curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
  apt-get install -y nodejs
}

command -v hubot &>/dev/null || {
  npm install -g hubot coffeescript
}

