#!/usr/bin/env bash

set -eux -o

# pause sandbox
docker pause sandbox-hdp

# pause proxy
docker pause sandbox-proxy
