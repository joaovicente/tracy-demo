# tracy-demo
The quickest way to get tracy-demo running is using Docker.

## The docker way
### Install Docker
see https://docs.docker.com/engine/installation/

### Build the Docker image
`docker build -t tracy-demo:0.1.0 .`

### Run the Docker image
`docker run --rm -it -p 8080:8080 --name tracy-demo tracy-demo:0.1.0`

### Establish your docker host IP address
`docker-machine ip default`<br>
The Tracy Web App will attempt to connect to a host named tws.
You will need to add tws and dockerhost to your <a href="https://en.wikipedia.org/wiki/Hosts_(file)">Hosts file</a>.<br>
My hosts file contain the following entries<br>
`192.168.99.100 dockerhost`<br>
`192.168.99.100 tws`<br>

### Open Tracy web application
open <a href="http://dockerhost:8080/twa/">http://dockerhost:8080/twa</a> in your browser
