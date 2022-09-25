#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=isidioannou/sample-python-app:v1.0.0

# Step 2
kubectl run sample-app\
    --image=$dockerpath\
    --port=80 --labels app=python-app


# Step 3:
kubectl get pods

# Step 4:
kubectl port-forward sample-app 8000:80

