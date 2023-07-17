# Create the docker image **not** using docker layers

## Build docker image

Change directory

```bash
cd ~/no-docker-layers
```{{exec}}

Build the docker image

```bash
time docker build -t currency-store:no-layer .
```{{exec}}

**NOTE**: Observe the time taken to build the image.


## Make a change to the code (not the dependencies)

```bash
echo '# This is a comment' >> main.py
```{{exec}}

## Build docker image again

```bash
time docker build -t currency-store:no-layer .
```{{exec}}

**NOTE**: Observe the time taken to build the image.

## Let's change the dependency to see the difference

```bash
echo 'requests==2' >> requirements.txt
```{{exec}}

```bash
time docker build -t currency-store:no-layer .
```{{exec}}

**NOTE**: Observe the time taken to build the image.

## Conclusion

Since we didn't take advantage of the docker layers in our build, the time is
quite about the same even though our dependencies haven't changed and we
could've used the same installations as before.
