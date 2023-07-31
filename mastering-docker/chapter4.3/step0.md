# Create a User-Defined Bridge Network

## Create the network

```bash
docker network create --driver bridge demo
```{{exec}}


## Run the first nginx

```bash
docker run -d --name nginx-bridge --hostname nginx --network demo nginx
```{{exec}}

The Nginx is now only accessible withing the `demo` network. We can test it by
running a container in the same network and trying to access it.

```bash
docker run --rm --network demo curlimages/curl nginx
```{{exec}}

It is also accessible by container name:

```bash
docker run --rm --network demo curlimages/curl nginx-bridge
```{{exec}}
