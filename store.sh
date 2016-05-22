#!/usr/bin/env bash

# BUILD

cd /Users/franciscoalvarez/MyProjects/spring-cloud-examples/customers-stores/rest-microservices-store
mvn clean install
cp target/rest-microservices-store-1.0.0.BUILD-SNAPSHOT.jar src/main/docker/

# DOCKERIZE
#cd src/main/docker/
#docker rmi micro/store
#docker build -t micro/store .

#docker run --name store -p 8081:8081 --link eureka:eureka --link rabbit:rabbit --link mongo:mongo -e RABBITMQ_PORT=5672 -e RABBITMQ_HOST=rabbit -e EUREKA_HOST=eureka -e EUREKA_PORT=8761 -e MONGODB_HOST=mongo -e MONGODB_PORT=27017  --rm  micro/store