#!/usr/bin/env bash

set -eux -o

# resume sandbox
docker unpause sandbox-hdp

# resume proxy
docker unpause sandbox-proxy
