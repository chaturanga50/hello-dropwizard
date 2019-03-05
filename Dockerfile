FROM java:openjdk-8-jdk-alpine

WORKDIR /tmp/

COPY ./target/hello-dropwizard-1.0-SNAPSHOT.jar /tmp/
COPY ./example.yaml /tmp/

EXPOSE 8080

CMD [ "java", "-jar", "/tmp/hello-dropwizard-1.0-SNAPSHOT.jar", "server", "/tmp/example.yaml" ]