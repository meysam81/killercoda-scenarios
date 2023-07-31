#!/bin/bash -eu

docker container inspect nginx-host | grep -q '"Status": "running"'
curl -sf http://localhost:1234/
