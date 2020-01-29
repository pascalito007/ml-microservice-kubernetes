#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=pasciano007/flaskapp

# Step 2:  
# tag
echo "Docker ID and Image: $dockerpath"
docker tag flaskapp-api $dockerpath:latest

# List docker images
docker image ls

# Authenticate
docker login

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest

