#!/usr/bin/env bash

docker build --tag=capstone-project .

docker image ls

docker run -p 8000:80 capstone-project