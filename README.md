# Wildfly 9.0.0.Final Dockerized

This Dockerfile is the base to the adrianofonseca/wildfly image. Basically, we have here a wildfly with the postgres driver module. I also have installed the iproute in order to privide the ss command required to run Arquillian tests against container using Arquillian Cube.
From the image (adrianofonseca/wildfly), I have added a data source AppDS this Dockerfile and its scripts can be found [here]().
And [here](https://github.com/adriano-fonseca/PlayWithJEE), I have a conceptual API that uses [adrianofonseca/docker-wildfly-ds](https://github.com/adriano-fonseca/docker-wildfly-ds), which has the datasource configuration. As base image to deploy the application (PlayWithJEE) and run some integration tests against the Dockerized version of the application. 

## Build

You cand build this image from the Dockerfile by yourself using the follow command:

    docker build --rm --tag wildfly-image-name .
