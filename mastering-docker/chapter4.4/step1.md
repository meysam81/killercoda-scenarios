# Separate bridge network

Now let's create another network to show that cross-network resolving doesn't
work in Docker built-in DNS server.

## Create the network

```bash
docker network create --driver bridge demo2
```{{exec}}

## Resolve the nginx from the other network

```bash
docker run --rm --network demo2 tutum/dnsutils dig nginx +search +short
```{{exec}}

As you can see, the name does not resolve since the containers are not in the
same network.
