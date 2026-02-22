#!/bin/bash
yum update -y
yum install -y docker
systemctl start docker
systemctl enable docker

docker pull DOCKERHUB_USERNAME/dev-nginx:latest
docker run -d -p 80:80 DOCKERHUB_USERNAME/dev-nginx:latest
