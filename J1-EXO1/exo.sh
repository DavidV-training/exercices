#!/bin/bash

echo "download registry"
docker pull registry
echo "dwownload hello-world"
docker pull hello-world
echo "run registry"
docker run -d -p 5000:5000 --restart always --name registry registry:2
echo "tag de hello-world"
docker tag hello-world localhost:5000/hello-world
echo "push hello-world"
docker push localhost:5000/hello-world
echo "Supp de hello world"
docker rmi hello-world:latest
echo "Supp de hello world"
docker rmi localhost:5000/hello-world
