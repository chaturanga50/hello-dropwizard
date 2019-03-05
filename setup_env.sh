#!/bin/bash

docker build -t hello-dropwizard .
docker swarm init
docker stack deploy --compose-file=docker-compose.yml hello-dropwizard
docker service ls