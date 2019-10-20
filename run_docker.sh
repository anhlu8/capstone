#!/usr/bin/env bash

docker build --tag=flask-server .
docker image ls
docker run -p 8080:5000 -v /Users/anh/Desktop/capstone/flask:/flask flask-server

# Don't use 8000 because Docker Desktop is running on that port
# sudo lsof -i tcp:8080
# docker ps docker ps -a (to get which docker container is running)
# docker container stop $(docker container ls -aq)
# docker container rm $(docker container ls -aq)