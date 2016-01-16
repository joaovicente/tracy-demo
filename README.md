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
`docker-machine ip default`<br>
I recommend adding this address to your <a href="https://en.wikipedia.org/wiki/Hosts_(file)">Hosts file</a> to avoid having to remember it.<br>
I have added it as dockerhost, so from now on all urls will refer to it.

### Open Tracy web application
open <a href="http://dockerhost:8080/twa/"/> in your browser
