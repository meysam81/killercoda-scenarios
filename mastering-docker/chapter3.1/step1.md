# See Nginx docker layers

## Pull the image

```bash
docker pull nginx:1.25-alpine
```{{exec}}

## Inspect the layers

```bash
docker history -H nginx:1.25-alpine
```{{exec}}

### Explanation

As you can see on the terminal, the layers are printed with each layer on a single
line.

You can also see the size of each layer and the command used to create the layer.

This will give you an idea on how the underlying implementation works and also
how to optimize your docker images by removing or merging layers.
