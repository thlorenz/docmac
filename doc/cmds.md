## Remove old docker containers

    docker rm `docker ps -notrunc -a -q`

## Remove all untagged images

    docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
