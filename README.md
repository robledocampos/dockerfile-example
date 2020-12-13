
## Build Docker image with Nginx

    docker image build ~/dockerfile-example -t <image-name>


## Run Docker container

    docker run -d -p 8080:80 <image-name>

    -d runs on background
    -p publish port
    
  doing '-p 8080:80' it is stablished a bridge between host and container
