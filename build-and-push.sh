#!/usr/bin/env bash

docker build -t ghcr.io/dafaath/order-service:latest --platform linux/amd64 .

echo "$PASS_GITHUB" | docker login ghcr.io --username dafaath --password-stdin

docker push ghcr.io/dafaath/order-service:latest