#!/usr/bin/env bash

set -eux -o

## Reference https://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html

## install docker
sudo yum update -y
sudo yum install -y docker

## install git
sudo yum install -y git

## Start the Docker service.
sudo service docker start

## Add the ec2-user to the docker group
sudo usermod -a -G docker ec2-user
