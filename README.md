# tracy-demo
[Tracy](https://github.com/joaovicente/tracy) is an an Open Source Java instrumentation library which, along with its companions ([tracy-web-services](https://github.com/joaovicente/tracy-web-services) and [tracy-ui](https://github.com/joaovicente/tracy-ui)) make up an Open Source Application Performance Management framework.
<br>
<br>
*tracy-demo* Illustrates the quickest way to get tracy-demo running is using Docker on your development environment.

## Quick start
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
First clone this repository 
```
git clone https://github.com/joaovicente/tracy-demo.git
```
Next step into tracy-demo folder
```
cd tracy-demo
```
Now build the tracy-ui Docker image
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

### Step 5: tracy-ui is now up-and-running!
tracy-ui should now be accessible on [http://dockerhost:8000/app/](http://dockerhost:8000/app/)
<br>
<br>
<img width="867" alt="tracy-ui landing page" src="https://cloud.githubusercontent.com/assets/3578589/18456125/784d1b72-7946-11e6-88cf-319209b5f179.png">

Navigate to demo-static-app to get a flavor of the measurement visualisations supported in tracy-ui<br>
<br>
<img width="143" alt="Navigate to demo-static-app" src="https://cloud.githubusercontent.com/assets/3578589/18456130/7854b3c8-7946-11e6-852f-bf0c0169dc4c.png">
<br>
<br>
*demo-static-app* shows the various possible verdicts for an Application Task, from Excellent down to Unacceptable.<br>
<br>
<img width="1421" alt="demo-static-app" src="https://cloud.githubusercontent.com/assets/3578589/18456127/784f2b2e-7946-11e6-99d3-ddb60e0c7fc7.png">
<br>
<br>
*You can also navigate towards it through its URL: [http://dockerhost:8000/app/#/application?env=Local&application=demo-static-app](http://dockerhost:8000/app/#/application?env=Local&application=demo-static-app)*

Now navigate to *demo-live* to start an interactive demo <br>
<br>
<img width="145" alt="navigate to demo-live" src="https://cloud.githubusercontent.com/assets/3578589/18456128/784f8d1c-7946-11e6-8c63-501ed3b1cbc1.png">
<br>
<br>
*You can also navigate towards it through its URL:
[http://dockerhost:8000/app/#/application?env=Local&application=demo-live](http://dockerhost:8000/app/#/application?env=Local&application=demo-live)*
<br>
<br>
In the *demo-live* Application *Control Panel* tab, click the *Start Demo* button<br>
<br>
<img width="249" alt="start demo-live" src="https://cloud.githubusercontent.com/assets/3578589/18456126/784e654a-7946-11e6-80de-53db34920534.png">
<br>
<br>
Navigate to the live demo: *Applications > demo-live > hello-tracy-sim* menu to observe the *demo-live* measurement <br>
<br>
<img width="136" alt="demo-live | hello-tracy-sim" src="https://cloud.githubusercontent.com/assets/3578589/18456129/7850a1e8-7946-11e6-9fba-af8c03eb4c3c.png">
<br>
<br>
After a few seconds you can start measuring simulated traffic, using APDEX score, vital statistics and response time histogram.

<img width="1435" alt="hello-tracy-sim" src="https://cloud.githubusercontent.com/assets/3578589/18456132/7869ed06-7946-11e6-9a0a-a29a7e0c59d2.png">
<br>
<br>
*You can also navigate towards this panel through its URL:
[http://dockerhost:8000/app/#/task?env=Local&application=demo-live&task=hello-tracy-sim](http://dockerhost:8000/app/#/task?env=Local&application=demo-live&task=hello-tracy-sim)*
<br>

You can now drilldown into any of the charts to inspect see timelines for any of the statistics shown.<br>
For example, from the Vitals timechart you can drilldown to see the timelines behind it:<br>
<br>
<img width="146" alt="Vital statistics drilldown" src="https://cloud.githubusercontent.com/assets/3578589/18456131/78699900-7946-11e6-8d63-b1e289a6050f.png">
<br>
<br>
You can then see the timelines<br>
<br>
<img width="1395" alt="Tracy timelines" src="https://cloud.githubusercontent.com/assets/3578589/18456134/786c5b18-7946-11e6-98d6-c4da3384f572.png">
<br>
<br>
And inspect the Tracy events content, where you will find developer specified transaction meta-data<br>
<br>
<img width="1440" alt="Inspect Tracy events" src="https://cloud.githubusercontent.com/assets/3578589/18456133/786ae9a4-7946-11e6-9c41-14ba72b935dc.png">

## Measure performance of a real application
>Comming soon

