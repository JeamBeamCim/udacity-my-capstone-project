#!/usr/bin/env bash

CLUSTER="capstone-project"
REGION="us-east-1"
CLUSTER_NAME="${CLUSTER}.${REGION}.eksctl.io"

if kubectl config get-clusters | grep -q ${CLUSTER_NAME}; then
    echo
    echo "Cluster '${CLUSTER_NAME}' already exists!"
    echo
else
    echo
    echo "Creating cluster..."
    ./bin/eksctl create cluster --config-file=capstone_cluster.yml
fi
