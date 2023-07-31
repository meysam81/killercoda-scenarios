#!/bin/bash -eu

docker container inspect nginx1 | grep -q '"Status": "running"'
docker container inspect nginx2 | grep -q '"Status": "running"'