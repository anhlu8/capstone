#!/usr/bin/env bash

dockerpath=anhlu8/udacity
kubectl run devops-server 278749303080.dkr.ecr.us-east-1.amazonaws.com/udacity:latest
kubectl get pods
kubectl expose deployment devops-server --type=LoadBalancer
minikube service devops-server