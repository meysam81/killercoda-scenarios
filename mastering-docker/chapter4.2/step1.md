# Docker host networking

## Run nginx in host networking mode

```bash
docker run -d --name nginx-host --network host nginx
```{{exec}}

## Test your connection

```bash
docker run --rm curlimages/curl --network host localhost
```{{exec}}

Both the containers above are running in host networking mode, which allows them
to access the host network directly. This means that the container is not
isolated from the host network and can access anything on this host using `localhost`.

To make sure the above claim holds, try running an HTTP server on the host:

```bash
python3 -m http.server -d /tmp 1234 >/dev/null 2>&1 &
```{{exec}}

Now, access the localhost from a container:

```bash
docker run --rm curlimages/curl --network host localhost:1234
```{{exec}}
