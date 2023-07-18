# Docker context and Dockerfile in different directories

For big projects, however, the Dockerfile and the source may be in different
directories. Often because there are different Dockerfiles for differnet
environments and sometimes because of other environmental and dependency change.

## Change directory

```bash
cd ~/different-dir
```{{exec}}


## Build the image

```bash
docker build -t docker-context-demo:different-dir -f docker/Dockerfile .
```{{exec}}

The Dockerfile is in another directory so we have to explicitly tell the docker
where to look for it. But the context is the same as before, the current
directory where all our assets resides and we want to docker engire to use it
to build the image.

## Run the container

```bash
docker run --name different-dir --rm -dp 8002:80 docker-context-demo:different-dir
```{{exec}}
