#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="daviinaa/mlp4"

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl run mlp4\
#     --image=$dockerpath\
#     --port=80 --labels app=mlp4
kubectl run mlp4 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward mlp4 8080:80