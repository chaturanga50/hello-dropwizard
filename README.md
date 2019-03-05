# Introduction

The Dropwizard Hello World application

# Running The Application

To test the example application run the following commands.

* To package the example run the following from the root dropwizard directory.

        mvn package

* To run the server run.

        java -jar target/hello-dropwizard-1.0-SNAPSHOT.jar server example.yaml

* To hit the Hello World example (hit refresh a few times).

	http://localhost:8080/hello-world

	http://localhost:8080/hello-world?name=World

* The healthcheck resource runs the health check class we wrote. You should see something like this:

  * deadlocks: OK
  * template: OK

# Dev Environment Setup

## Files
- `Dockerfile` - Buid the hello-dropwizard docker image using the compliled jar file
- `docker-compose.yml` - Docker swarm config file including nginx configurations.
- `nginx/conf.d/hello-world.conf` - Nginx config file (All the config files added to this directory will pick by the nginx container)
- `setup_env.sh` - All the startup command added to one script to startup easily.
- `Dockerfile_with_build` (optional) - If you want to build the packages inside the container then you should use this Dockerfile.

## Setup
Here I have used the docker swarm to startup the local environment, `docker-compose.yml` file contain all the configuratuon about the swarm containers. By default I've added to start 05 replicas of hello-dropwizard java app containers with 01 nginx container to proxy the incoming traffic to backend java containers.

All the traffic comming to the `/hello` will be routed to the applications `/hello-world/` page.