#!/usr/bin/env bash

CONTAINER_NAME="capstone-project"
VERSION=1.0.0

# Step 1:
# Build image and add a descriptive tag
docker build --tag ${CONTAINER_NAME}:${VERSION} app
