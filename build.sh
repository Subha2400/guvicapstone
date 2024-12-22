#!/bin/bash

# Variables
DOCKER_USERNAME="subha24"
DOCKER_PASSWORD="Subha@24Seenu"
IMAGE_NAME="devops_app"
TAG="latest" 
DOCKERFILE_PATH="."
REGISTRY="docker.io"
NAME="subha"

# Full image name with registry
IMAGE="${REGISTRY}/${DOCKER_USERNAME}/${IMAGE_NAME}:${TAG}"

# Login to Docker registry
echo "Logging into Docker registry..."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

if [ $? -ne 0 ]; then
  echo "Docker login failed. Please check your credentials."
  exit 1
fi

# Build the Docker image
echo "Building the Docker image..."
docker build -t "$IMAGE" "$DOCKERFILE_PATH"

if [ $? -ne 0 ]; then
  echo "Docker build failed."
  exit 1
fi

# Push the Docker image to the registry
echo "Pushing the Docker image to the registry..."
docker push "$IMAGE"

if [ $? -ne 0 ]; then
  echo "Docker push failed."
  exit 1
fi

echo "Docker image $IMAGE successfully built and pushed!"

