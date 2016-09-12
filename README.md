# tracy-demo
The quickest way to get tracy-demo running is using Docker.

## The docker way
### Step 1: Install Docker
see https://docs.docker.com/engine/installation/

### Step 2: Define some hosts in your machine
The tracy-ui will connect to host named tws-host.<br>
You will want your tws-host to be your docker host IP address which you can estabish with the following command
```
docker-machine ip default
```
Now simply add two lines in your <a href="https://en.wikipedia.org/wiki/Hosts_(file)">Hosts file</a>.<br>
My hosts file contain the following entries<br>
```
192.168.99.100 dockerhost
192.168.99.100 tws-host
```

### Step 2: Build the tracy-ui Docker image
```
docker build -t joaovicente/tracy-ui tracy-ui/
```

### Step 3: Build the tws (Tracy Web Services) Docker image
```
docker build -t joaovicente/tws tws/
```

### Step 4: Start both tracy-ui and tws
```
docker-compose up
```

### Step 5: Open tracy-ui
tracy-ui should now be accessible on [http://dockerhost:8000/app/](http://dockerhost:8000/app/)

### Step 6: Check out a sample Application visualisation (static view)
[http://dockerhost:8000/app/#/application?env=Local&application=demo-static-app](http://dockerhost:8000/app/#/application?env=Local&application=demo-static-app)

### Step 7: Start the demo-live
[http://dockerhost:8000/app/#/application?env=Local&application=demo-live](http://dockerhost:8000/app/#/application?env=Local&application=demo-live)

### Step 8: Observe the demo-live measurement
[http://dockerhost:8000/app/#/task?env=Local&application=demo-live&task=hello-tracy-sim](http://dockerhost:8000/app/#/task?env=Local&application=demo-live&task=hello-tracy-sim)


