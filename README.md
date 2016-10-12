# Using H2O with Docker

simplest run

```
$ docker run -p "8080:80" -ti south37/h2o-http2-demo-server
```

test with

```
$ curl http://localhost:8080/
<!DOCTYPE html>
<html>
  <head>
    <title>Welcome to H2O</title>
  </head>
  <body>
    <p>Welcome to H2O - an optimized HTTP server</p>
    <p>It works!</p>
  </body>
</html>
```

For more information, please refer to the documentation at [h2o.examp1e.net](https://h2o.examp1e.net/).

Docker image is available at [https://hub.docker.com/r/south37/h2o-http2-demo-server/](https://hub.docker.com/r/south37/h2o-http2-demo-server/).


# Task

## 0. Hello World
Open http://127.0.0.1

```
$ docker run \
  -p "80:80" \
  -v "$(pwd)/0_hello/h2o":/etc/h2o \
  -v "$(pwd)/0_hello/public":/var/www \
  -ti south37/h2o-http2-demo-server
```

## 1. HTTPS
Open http://127.0.0.1 and https://127.0.0.1 .

```
$ docker run \
  -p "80:80" \
  -p "443:443" \
  -v "$(pwd)/1_ssl/h2o":/etc/h2o \
  -v "$(pwd)/1_ssl/public":/var/www \
  -ti south37/h2o-http2-demo-server
```

## 2. Multiplexing
Open http://127.0.0.1 and https://127.0.0.1 .
Latency will is set to 200ms.

```
$ docker run \
  --cap-add=NET_ADMIN \
  -p "80:80" \
  -p "443:443" \
  -v "$(pwd)/2_multiplexing/h2o":/etc/h2o \
  -v "$(pwd)/2_multiplexing/public":/var/www \
  -ti south37/h2o-http2-demo-server \
  /bin/sh -c "tc qdisc add dev eth0 root netem delay 200ms && h2o"
```

## 3. Server Push
Open https://127.0.0.1 .

```
$ docker run \
  -p "80:80" \
  -p "443:443" \
  -v "$(pwd)/3_push/h2o":/etc/h2o \
  -v "$(pwd)/3_push/public":/var/www \
  -ti south37/h2o-http2-demo-server
```
