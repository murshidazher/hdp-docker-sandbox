#!/usr/bin/env bash

set -eux -o

# auto start docker - put on the start up file of hdp
sudo chkconfig docker on

# install docker compose
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose version

# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-centos-7
# https://docs.docker.com/storage/volumes/

docker-compose up -d && docker ps

# after first time we can use start
#docker-compose start

# list services
docker volume ls

# docker volume inspect <volume_name>

