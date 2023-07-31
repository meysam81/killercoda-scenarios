# Docker null networking

## Run nginx in null networking mode

```bash
docker run -d --name nginx-none --network none nginx
```{{exec}}

Now, except for inside the container, nobody can access the nginx container,
and all the traffic, whether incoming or outgoing, is blocked.

## Test your connection

This is working as expected, as you can see below:

```bash
docker exec nginx-none curl localhost
```{{exec}}

This one will not work:

```bash
docker run --rm --network none curlimages/curl localhost
```{{exec}}
