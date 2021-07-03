#!/usr/bin/env bash
set -eux -o

# docker volume rm hortonworks/sandbox-hdp:2.6.5

docker-compose stop
docker-compose down