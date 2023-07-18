# Docker context and Dockerfile in the same directory with dockerignore

No matter the size of the project, it's always a good idea to have a
`.dockerignore` to avoid adding unintended files and directories to the image.
This will ensure that the size of the image is as small as possible as well
as not expose the sensitive information to the image.

## Change directory

```bash
cd ~/same-dir-with-dockerignore
```{{exec}}


## Build the image

```bash
docker build -t docker-context-demo:same-dir-with-dockerignore .
```{{exec}}

The Dockerfile and the context we want the docker engire to start is the same.
Though there are some files we don't wish to ship to the docker image and that's
why there is a `.dockerignore` file in the current directory that specifies
the names of those files and directories (in glob pattern).

## Run the container

```bash
docker run --name same-dir-with-dockerignore --rm -dp 8003:80 docker-context-demo:same-dir-with-dockerignore
```{{exec}}
