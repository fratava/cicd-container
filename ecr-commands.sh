#!/bin/bash

#log in to ECR
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 776624122181.dkr.ecr.us-west-2.amazonaws.com \
#build the docker image
docker build -t image-demo:latest . \
#tag the docker image
docker tag image-demo:latest 776624122181.dkr.ecr.us-west-2.amazonaws.com/image-demo:latest \
#push to ECR
docker push 776624122181.dkr.ecr.us-west-2.amazonaws.com/image-demo:latest