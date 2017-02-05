# Wildfly 9.0.0.Final Dockerized

This Dockerfile is the base to the adrianofonseca/wildfly image. Basically, we have here a wildfly with the postgres driver module and a datasource AppDS created. I also have installed the iproute in order to privide the ss command required to run Arquillian tests against container using Arquillian Cube. 
I have [here](https://github.com/adriano-fonseca/PlayWithJEE) a conceptual API that uses adrianofonseca/wildfly as a base image to deploy the application and run integration tests against the Dockerized version of the application. 

## Build

    docker build --rm --tag wildfly-image-name .
