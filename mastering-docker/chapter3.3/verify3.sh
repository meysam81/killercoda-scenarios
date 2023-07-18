#!/bin/bash -eu

docker image inspect docker-context-demo:same-dir-with-dockerignore
curl -sf localhost:8003/ | grep -q "Hello World"
