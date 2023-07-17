# Build and run the child image

## Build the image

```bash
docker build -t nginx:local ./child-image
```{{exec}}

## Run the image

```bash
docker run --name nginx -dp 8000:80 nginx:local
```{{exec}}

## Test the container

```bash
curl localhost:8000
```{{exec}}
