echo Récupérer le source
git clone https://github.com/DavidV-training/ex-java-basic-service.git

echo générer le jar
cd ex-java-basic-service
sudo apt install maven
mvn package
 
echo executer localement pour tester
java -jar ex-java-basic-service/target/basic-service-1.0-SNAPSHOT.jar --server.port=8081
