#!/usr/bin/env bash

cd /Users/franciscoalvarez/MyProjects/spring-cloud-examples/eureka
mvn clean install
cp target/eureka-0.0.1-SNAPSHOT.jar src/main/docker/
cd src/main/docker/

docker rmi micro/eureka
docker build -t micro/eureka .

docker run --name eureka -p 8761:8761  --rm  micro/eureka