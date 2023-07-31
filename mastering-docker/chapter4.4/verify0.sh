#!/bin/bash -eu

docker network inspect demo | grep -q '"Name": "demo"'
docker container inspect nginx | grep -q '"Status": "running"'
docker image inspect tutum/dnsutils --format '{{ .RepoTags }}' | grep -q '\[tutum/dnsutils:latest\]'
