#!/usr/bin/env bash

DOCKER_REPOSITORY="capstone-project"
DEPLOYMENT_NAME=${DOCKER_REPOSITORY}

# Remove service & deployment
echo
echo "Deleting service: ${DEPLOYMENT_NAME}"
kubectl delete services ${DEPLOYMENT_NAME}

echo
echo "Deleting deployment: ${DEPLOYMENT_NAME}"
kubectl delete deployments ${DEPLOYMENT_NAME}

# Show cluster's resources
echo
echo "Listing services"
kubectl get services
echo
echo "Listing deployments"
kubectl get deployments
echo
echo "Listting pods"
kubectl get pods
