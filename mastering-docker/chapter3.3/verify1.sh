#!/bin/bash -eu

docker image inspect docker-context-demo:same-dir
curl -sf localhost:8001/index.html | grep -q "Hello World"
