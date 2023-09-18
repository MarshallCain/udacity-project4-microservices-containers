#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=kushalsabharwal/udamlmicroservice-api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udamlmicroservice-api --image=$dockerpath:latest

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#kubectl port-forward udamlmicroservice-api 8000:80
kubectl port-forward deployment/udamlmicroservice-api 8000:80