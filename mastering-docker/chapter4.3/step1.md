# Separate bridge network

Now let's create another network to show that cross-network resolving doesn't
work in Docker built-in DNS server.

## Create the network

```bash
docker network create --driver bridge demo2
```{{exec}}

## Resolve the nginx from the other network

```bash
docker run --rm --network demo2 tutum/dnsutils dig nginx-hostname nginx-container nginx-alias +search +short
```{{exec}}

The response is empty, meaning that the DNS server doesn't know about the
`nginx-container` name. This is because the DNS server is only aware of the
containers in the same network.
