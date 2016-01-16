# tracy-demo
The quickest way to get tracy-demo running is using Docker.

## The docker way
### Install Docker
see https://docs.docker.com/engine/installation/

### Build the Docker image
`docker build -t tracy-demo:0.1.0 .`

### Run the Docker image
`docker run -it -p 8080:8080 tracy-demo:0.1.0`

### Establish your docker host IP address
`docker-machine ip default`
Let's refer to the address returned as DOCKER_HOST_IP

### Open Tracy web application
open http://DOCKER_HOST_IP/twa in your browser
