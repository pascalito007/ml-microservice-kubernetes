#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# Docker ID/path
dockerpath=pasciano007/flaskapp:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run flaskapp --image=$dockerpath --port=80

# Scale the app by adding 3 replicas pods
kubectl scale --replicas=3 deploy/flaskapp

# Step 3:
# List kubernetes pods
kubectl get pods

# Enable heapster addon for monitoring purpose on minikube
kubectl addons enable heapster

# Heapster run on different namespace, we want to show all
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/flaskapp 8000:80



