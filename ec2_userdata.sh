#!/bin/bash
yum update -y
yum install -y docker
systemctl start docker
systemctl enable docker

docker pull aruns14/dev-nginx:latest
docker run -d -p 80:80 aruns14/dev-nginx:latest
