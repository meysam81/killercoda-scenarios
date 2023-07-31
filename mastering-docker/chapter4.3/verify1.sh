#!/bin/bash -eu

docker network inspect demo2 | grep -q '"Name": "demo2"'
docker image inspect tutum/dnsutils | grep -q '"RepoTags": \["tutum/dnsutils:latest"\]'
