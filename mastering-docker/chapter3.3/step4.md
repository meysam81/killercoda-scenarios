# Docker context and Dockerfile in different directories with dockerignore

This last step is the combination of all the previous ones. The Dockerfile is in
another directory, the context is the current directory and there is a
`.dockerignore` file in the current directory.

## Change directory

```bash
cd ~/different-dir-with-dockerignore
```{{exec}}


## Build the image

```bash
docker build -t docker-context-demo:different-dir-with-dockerignore -f docker/Dockerfile .
```{{exec}}

Again, specifying the Dockerfile with the `-f` will not change the context and
only informs the engire where to look for the Dockerfile. The context is still
the dot at the end of the command which is the current directory.

## Run the container

```bash
docker run --name different-dir-with-dockerignore --rm -dp 8004:80 docker-context-demo:different-dir-with-dockerignore
```{{exec}}
