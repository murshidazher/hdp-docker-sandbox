#!/usr/bin/env bash

set -eux -o

# to stop all containers
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

cd ./HDP_2.6.5

# re-run the script
sudo bash docker-deploy-hdp265.sh
