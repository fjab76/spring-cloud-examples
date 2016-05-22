#!/usr/bin/env bash
docker run --rm -h my-rabbit -p 5672:5672 --name rabbit rabbitmq
