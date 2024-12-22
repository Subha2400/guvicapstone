#!/bin/bash

# Define variables
IMAGE_NAME="devops_app"
TAG="latest"

# Build the Docker image
docker build -t $IMAGE_NAME:$TAG .
echo "Docker image $IMAGE_NAME:$TAG built successfully."
