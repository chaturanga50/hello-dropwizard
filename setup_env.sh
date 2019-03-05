#!/bin/bash

## create the docker image using Dockerfile in the root directory
docker build -t hello-dropwizard .

## Init the docker swarm in the root folder
docker swarm init

## Deploy the new stack named hello-dropwizard using the docker-compose.yml
docker stack deploy --compose-file=docker-compose.yml hello-dropwizard

## List the started containers and replica count
docker service ls