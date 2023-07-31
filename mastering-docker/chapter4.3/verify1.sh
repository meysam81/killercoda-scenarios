#!/bin/bash -eu

docker network inspect demo2 | grep -q '"Name": "demo2"'
