#!/usr/bin/env sh

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

# create boot2docker vm
boot2docker init

# vm needs to be powered off in order to change these settings without VirtualBox blowing up
boot2docker stop > /dev/null 2>&1

# forward default docker ports on vm in order to be able to interact with running containers
echo "\n\033[00;90mForwarding default docker ports (49000..49900) on boot2docker-vm \033[00m\n"

#for i in {49000..49900}; do
 #VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port$i,tcp,,$i,,$i";
 #VBoxManage modifyvm "boot2docker-vm" --natpf1 "udp-port$i,udp,,$i,,$i";
#done

echo '\033[00;31mAdd\033[00m "export DOCKER_HOST=tcp://localhost:4243" to your ~/.bashrc"'
echo '\033[00;32mRun\033[00m "boot2docker up" to start docker vm'
echo '\033[00;32mRun\033[00m "boot2docker" to see all commands'
echo '\033[00;32mRead\033[00m boot2docker docs at \033[00;34mhttps://github.com/boot2docker/boot2docker\033[00m for more information'

# resources: http://docs.docker.io/en/latest/installation/mac/
