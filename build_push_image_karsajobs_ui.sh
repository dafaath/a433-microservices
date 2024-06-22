#!/usr/bin/env bash

# Build docker image
docker build -t ghcr.io/dafaath/karsajobs-ui:latest .

# Login to github registry
echo "$PASS_GITHUB" | docker login ghcr.io --username dafaath --password-stdin

# Push to do github registry
docker push ghcr.io/dafaath/karsajobs-ui:latest
