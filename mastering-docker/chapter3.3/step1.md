# Docker context and Dockerfile in the same directory

Often, for small projects, the Dockerfile and the source are in the same
directory. This will ease the build because there is no extra flag required.

## Change directory

```bash
cd ~/same-dir
```{{exec}}


## Build the image

```bash
docker build -t docker-context-demo:same-dir .
```{{exec}}

The dot in the above command is the "context". The place where the docker
engire will start looking for the files to build the image. This "context" is
also the same directory where `COPY . .` will use to copy all the files and
directories to the destination.

## Run the container

```bash
docker run --name same-dir --rm -dp 8001:80 docker-context-demo:same-dir
```{{exec}}
