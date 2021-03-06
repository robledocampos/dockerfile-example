# Docker nginx web server
  
  Here we: 
  
  - Build docker image, based on a dockerfile with debian and nginx
  - Run a container with this image
  - Make a bridge to expose nginx webserver to localhost
  - See commands to list, stop and delete container
  - See commands to list and delete image
  
## Prerequisites

  - Docker running in your environment (if you don't have it: https://www.docker.com/get-started)

## Build docker image with nginx

  On a terminal, inside *dockerfile-example* folder, execute:

    docker image build . -t <image-name>
    
    -t tags the image with a label

## Run docker container

    docker run -d -p 80:80 --name <container-name> <image-name> 

    -d runs on background
    -p publish port
    --name tags the container with a label

  Using the above option *-p 80:80* it is stablished a bridge between host and container. that way we can access nginx from localhost, using *localhost*

## Listing, stopping and deleting containers

### List:

    docker container ls

### Stop:

    docker container stop <container-name>
    
### Delete:

    docker container rm <container-name>

## Listing and deleting images

### List:

    docker image ls

### Delete:

    docker image rm <image-name>
