#!/bin/bash

# Define variables
IMAGE_NAME="devops_app"
TAG="latest"

# Deploy the Docker container
docker-compose up -d
echo "Docker container $IMAGE_NAME deployed successfully."
