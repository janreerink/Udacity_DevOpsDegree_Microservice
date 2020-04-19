#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=jansdockerhub/mlapp

# Step 2
# Run the Docker Hub container with kubernetes
#minikubectl run mlapp --image=$dockerpath --port=80 
kubectl create deployment mlapp --image=$dockerpath
kubectl expose deployment mlapp --type=LoadBalancer --port=80
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/mlapp 8000:80
