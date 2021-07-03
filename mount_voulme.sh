#!/usr/bin/env bash

set -eux -o

# https://docs.docker.com/storage/volumes/

docker-compose up -d

# after first time we can use start
docker-compose start

