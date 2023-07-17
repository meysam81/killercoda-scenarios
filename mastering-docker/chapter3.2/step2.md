# Create the docker image **with** docker layers

## Build docker image

Change directory

```bash
cd ~/with-docker-layers
```{{exec}}

Build the docker image

```bash
time docker build -t currency-store:with-layer .
```{{exec}}

Observe the time taken to build the image. (~28s)


## Make a change to the code (not the dependencies)

```bash
echo '# This is a comment' >> main.py
```{{exec}}

## Build docker image again

```bash
time docker build -t currency-store:with-layer .
```{{exec}}

Observe the time taken to build the image. (~0.5s)

This time we took advantage of docker layers in our build and that's why the
dependencies needed to install only once. The second time we built the image,
they are already installed from a layer of a previously built image and we only
re-used that layer without the need for another execution.

**THIS SAVES DEVELOPMENT TIME FOR YOU AND YOUR TEAM**
