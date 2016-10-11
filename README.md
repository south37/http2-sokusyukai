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


# Task

## 0. Hello World
Open http://127.0.0.1

```
$ docker run \
  -p "80:80" \
  -v "$(pwd)/0_hello/h2o":/etc/h2o \
  -v "$(pwd)/0_hello/public":/var/www \
  -ti lkwg82/h2o-http2-server
```

## 1. HTTPS
Open http://127.0.0.1 and https://127.0.0.1 .

```
$ docker run \
  -p "80:80" \
  -p "443:443" \
  -v "$(pwd)/1_ssl/h2o":/etc/h2o \
  -v "$(pwd)/1_ssl/public":/var/www \
  -ti lkwg82/h2o-http2-server
```
