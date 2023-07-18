#!/bin/bash -eu

trivy image nginx:1.25.1-alpine-fixed -s HIGH,CRITICAL --exit-code 1
