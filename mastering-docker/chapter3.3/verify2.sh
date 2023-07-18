#!/bin/bash -eu

docker image inspect docker-context-demo:different-dir
curl -sf localhost:8002/ | grep -q "Hello World"
