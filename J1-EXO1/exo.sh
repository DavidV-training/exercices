docker run -d -p 5000:5000 --restart always --name registry registry:2
docker pull hello-world
docker tag hello-world:latest localhost:5000/torra/hello-world:1.0

docker push localhost:5000/torra/hello-world:1.0


