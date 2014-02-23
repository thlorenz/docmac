#!/usr/bin/env sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# add brew-cask to brew (needed to install virtual box)
brew update
brew tap phinze/cask
brew install brew-cask

# install virtual box to use as virtual machine
brew cask install virtualbox

# boot2docker
brew install boot2docker

# docker
brew install docker

# resources: http://docs.docker.io/en/latest/installation/mac/