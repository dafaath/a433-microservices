#!/usr/bin/env bash

# Build docker image
docker build -t item-app:v1 .

# List all image
docker image ls

# Login to github registry
echo "$PASS_GITHUB" | docker login ghcr.io --username dafaath --password-stdin

# Tag image to match github registry
docker tag item-app:v1 ghcr.io/dafaath/item-app:v1

# Push to do github registry
docker push ghcr.io/dafaath/item-app:v1


