#!/bin/bash -eu

docker image inspect docker-context-demo:different-dir-with-dockerignore
curl -sf localhost:8004/ | grep -q "Hello World"
