# docker-python-imagemagick7

![Docker Image Version](https://img.shields.io/docker/v/johnfraney/docker-python-imagemagick7)
![Docker Cloud Pulls](https://img.shields.io/docker/pulls/johnfraney/docker-python-imagemagick7.svg)

A Docker image based on Python's Buster image that includes `pipx` and ImageMagick 7.

Developed primarily to build [Blurry](https://github.com/blurry-dev/blurry) sites in GitHub actions using [`blurry-dev/actions-blurry-build`](https://github.com/blurry-dev/actions-blurry-build).

## Update

```bash
docker build -t docker-python-imagemagick7 .
docker tag docker-python-imagemagick7:latest johnfraney/docker-python-imagemagick7
docker push johnfraney/docker-python-imagemagick7
```
