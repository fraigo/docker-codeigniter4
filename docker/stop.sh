#!/bin/bash
SCRIPT_PATH=$(dirname "$0")              

# docker-machine
DOCKERMACHINE=$(which docker-machine)
if [ ! "$DOCKERMACHINE" == "" ]; then
#    docker-machine start default
    eval $(docker-machine env  2> /dev/null)
fi

echo Current state:
docker-compose ps
echo Stopping...
docker-compose stop
