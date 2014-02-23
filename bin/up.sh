#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $DIR/down.sh

export DOCKER_HOST=tcp://127.0.0.1:4243

boot2docker init
boot2docker up

echo "add the following to your .bashrc: alias docker='docker -H tcp://127.0.0.1:4243/'"

# Use the below to ssh into docker
# echo 'default password for user docker is "tcuser"'
# boot2docker ssh

# resources: https://coderwall.com/p/r6ivdq
