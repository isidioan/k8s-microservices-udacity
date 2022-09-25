#!/usr/bin/env bash

# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=isidioannou/sample-python-app

# Step 2:  
echo "Docker ID and Image: $dockerpath"
dockerImgPush=$dockerpath:v1.0.0
docker tag sample-app $dockerImgPush
docker login

# Step 3:
docker push $dockerImgPush
