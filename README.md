# Simple golang web app
It is a golang web app using go 1.22 version and http package.


## How to build and run the application container

Run

```
cd go-web
docker build . -t go-app
docker run -dp 8080:8080 --name go-web go-app
```

 then visit http://localhost:8080 in your browser

You can find prebuilt images at [https://hub.docker.com/r/carlosblinf/go-app](https://hub.docker.com/r/carlosblinf/go-app)
