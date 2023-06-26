#!/usr/bin/env bash

dockerpath=gokhantrnd/capstone-project
TAG=capstone-project

kubectl run $TAG --image=$dockerpath --generator=run-pod/v1

kubectl get pods

kubectl port-forward pod/$TAG 8001:80
