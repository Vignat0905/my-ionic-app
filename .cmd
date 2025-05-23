
Jenkins run:

docker run -d \
  --name jenkins \
  -p 8080:8080 -p 50000:50000 \
  -v jenkins_home:/var/jenkins_home \
  jenkins/jenkins:lts-jdk21

docker logs <jenkins-container-id>
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

docker stop jenkins
docker rm jenkins

docker run -d --name jenkins \
  -p 8080:8080 \
  -v jenkins_home:/var/jenkins_home \
  -v //d/AWS/my-ionic-app:/my-ionic-app \
  jenkins/jenkins:lts


docker exec -u 0 -it jenkins bash

