# Using H2O with Docker

simplest run

```
$ docker run -p "8080:80" -ti lkwg82/h2o-http2-server
```

test with

```
$ curl http://localhost:8080/
not found
```

For more information, please refer to the documentation at [h2o.examp1e.net](https://h2o.examp1e.net/).

Docker image is available at [https://hub.docker.com/r/lkwg82/h2o-http2-server](https://hub.docker.com/r/lkwg82/h2o-http2-server).
