echo "Telechargement de registry"
docker pull registry
echo "Telechargement de hello-world"
docker pull hello-world
echo "Lancement de registry"
docker run -d -p 5000:5000 --restart always --name registry registry:2
echo "je creer le tag de hello-world"
docker tag hello-world localhost:5000/hello-world
echo "Je push hello-world"
docker push localhost:5000/hello-world
echo "Suppression de hello world"
docker rmi hello-world:latest
echo "Suppression de hello world"
docker rmi localhost:5000/hello-world
