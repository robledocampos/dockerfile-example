# Docker nginx web server
  
  Here we: 
  
  - Build docker image, based on a dockerfile with debian and nginx.
  - Run a container with this image
  - Make a bridge to expose do nginx webserver to localhos 
  
## Prerequisites

  - Docker running.

## Build docker image with nginx

  On a terminal, inside *dockerfile-example* folder, execute:

    docker image build . -t <image-name>

## Run docker container

    docker run -d -p 8080:80 <image-name>

    -d runs on background
    -p publish port
    
  Using the above option *-p 8080:80* it is stablished a bridge between host and container. that way we can access nginx from localhost, using *localhost:8080*.
