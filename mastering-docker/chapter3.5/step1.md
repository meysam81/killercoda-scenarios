# Scan nginx image

## Scan the image

```bash
trivy image nginx:1.25.1-alpine -s HIGH,CRITICAL
```{{exec}}

As you can see the image has one HIGH vulnerability for x11 library.

We're going to update the library, save as the new docker image and scan again.

## Update the image

### Start the container

```bash
docker run --name nginx -it nginx:1.25.1-alpine sh
```{{exec}}

### Update the library

```bash
wget 'http://dl-cdn.alpinelinux.org/alpine/v3.18/main/x86_64/libx11-1.8.4-r4.apk'
apk add ./libx11-1.8.4-r4.apk
exit
```{{exec}}

### Save the new image

```bash
docker commit nginx nginx:1.25.1-alpine-fixed
```{{exec}}

## Rescan the new image

```bash
trivy image nginx:1.25.1-alpine-fixed -s HIGH,CRITICAL
```{{exec}}

As you can see the image has no vulnerabilities anymore.
