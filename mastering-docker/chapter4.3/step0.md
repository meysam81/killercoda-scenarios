# Create a User-Defined Bridge Network

## Create the network

```bash
docker network create --driver bridge demo
```{{exec}}


## Run the nginx

```bash
docker run -d --name nginx-container --hostname nginx-hostname --network-alias nginx-alias --network demo nginx
```{{exec}}


## Resolve the nginx from the same network

```bash
docker run --rm --network demo tutum/dnsutils dig nginx-hostname nginx-container nginx-alias +search +short
```{{exec}}

As you can see, all the names resolve correctly using the built-in DNS server
provided by Docker.
