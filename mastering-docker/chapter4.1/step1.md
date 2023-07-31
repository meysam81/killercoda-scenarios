# Talk to each other over the docker network

## Try talking from one to the other by hostname

```bash
docker exec nginx1 curl nginx2
```{{exec}}

As you can see, the containers cannot talk to each other by their names because
the DNS server will not resolve names that are not explicitly in the same network.

## Try talking from one to the other by IP

```bash
nginx2_ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' nginx2)
docker exec nginx1 curl $nginx2_ip
```{{exec}}

Since they have the same subnet, they can talk to each other by IP.

## Observe each container IP and subnet

```bash
docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}/{{.IPPrefixLen}}{{end}}' nginx1 nginx2
```{{exec}}
