#!/usr/bin/env bash
$(aws ecr get-login --no-include-email --region us-east-1)
docker build -t udacity .
docker tag udacity:latest 278749303080.dkr.ecr.us-east-1.amazonaws.com/udacity:latest
docker push 278749303080.dkr.ecr.us-east-1.amazonaws.com/udacity:latest