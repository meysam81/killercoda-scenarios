#!/bin/bash -eu

docker network inspect demo | grep -q '"Name": "demo"'
docker container inspect nginx-bridge | grep -q '"Status": "running"'
