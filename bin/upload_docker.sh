#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
DOCKER_HUB_ID="gokhantrnd"
DOCKER_REPOSITORY="capstone-project"
VERSION="1.000"

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=${DOCKER_HUB_ID}/${DOCKER_REPOSITORY}

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker build -t ${DOCKER_REPOSITORY}:${VERSION} ${dockerpath}:${VERSION} .
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"

# Step 3:
# Push image to a docker repository
docker push ${dockerpath}:${VERSION}
