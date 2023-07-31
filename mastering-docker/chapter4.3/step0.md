# Create a User-Defined Bridge Network

## Create the network

```bash
docker network create --driver bridge demo
```{{exec}}


## Run the nginx

```bash
docker run -d --name nginx-container --hostname nginx-hostname --network-alias nginx-alias --network demo nginx
```{{exec}}


## Use curl to resolve all the names

```bash
docker run --rm --network demo curlimages/curl nginx-container
```{{exec}}

```bash
docker run --rm --network demo curlimages/curl nginx-hostname
```{{exec}}

```bash
docker run --rm --network demo curlimages/curl nginx-alias
```{{exec}}

As you can see, all the names resolve correctly using the built-in DNS server
provided by Docker.
