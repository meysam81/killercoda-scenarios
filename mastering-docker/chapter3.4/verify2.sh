#!/bin/bash -eu

docker image inspect nginx:local
docker container inspect nginx
curl -sf localhost:8000
