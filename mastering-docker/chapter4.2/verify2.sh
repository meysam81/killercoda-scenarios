#!/bin/bash -eu

docker container inspect nginx-none | grep -q '"Status": "running"'
docker container inspect nginx-none | grep -q '"NetworkMode": "none"'
