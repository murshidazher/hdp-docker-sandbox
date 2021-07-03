#!/usr/bin/env bash

set -eux -o

# start docker service
sudo service docker start

# pause sandbox
docker pause $(docker ps -a -q --filter "status=running")
