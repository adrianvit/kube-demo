#!/usr/bin/env bash

#build artifact
./mvnw clean install

docker build -t kube-demo -f docker/Dockerfile .
docker tag kube-demo:latest localhost:5000/kube-demo

#push docker
docker push localhost:5000/kube-demo
