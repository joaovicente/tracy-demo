# Tracy UI
docker build -t vicentej/tracy-ui tracy-ui/
docker run -it -p 8000:8000 vicentej/tracy-ui

# TWS
docker build -t vicentej/tws tws/
docker run -it -p 8080:8080 vicentej/tws

