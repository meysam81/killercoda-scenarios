# Create a User-Defined Bridge Network

## Create the network

```bash
docker network create --driver bridge demo
```{{exec}}


## Run the nginx

```bash
docker run -d --name nginx --network demo nginx
```{{exec}}


## Resolve the nginx from the same network

```bash
docker run --rm --network demo tutum/dnsutils dig nginx +search +short
```{{exec}}

As you can see, the name resolve correctly using the built-in DNS server
provided by Docker when in the same network.
