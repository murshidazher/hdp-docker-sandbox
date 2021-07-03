#!/usr/bin/env bash

set -eux -o

# start docker service
sudo service docker start

# resume all stopped services
docker start $(docker ps -a -q --filter "status=exited")
