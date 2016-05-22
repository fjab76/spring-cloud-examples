#!/usr/bin/env bash

# BUILD
cd /Users/franciscoalvarez/MyProjects/spring-cloud-examples/customers-stores/rest-microservices-customers
mvn clean install
cp target/rest-microservices-customers-1.0.0.BUILD-SNAPSHOT.jar src/main/docker/

# DOCKERIZE
cd src/main/docker/
docker rmi micro/customer
docker build -t micro/customer .

docker run --name customer -p 9000:9000 --link eureka:eureka --link rabbit:rabbit -e RABBITMQ_PORT=5672 -e RABBITMQ_HOST=rabbit -e EUREKA_HOST=eureka -e EUREKA_PORT=8761  --rm  micro/customer