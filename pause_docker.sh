#!/usr/bin/env bash

set -eux -o

# pause sandbox
docker pause sandbox

# pause proxy
docker pause proxy
