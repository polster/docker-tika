Apache Tika Server in a Docker Container
========================================

## Intro

### Purpose

This code project contains a [Dockerfile](Dockerfile) to be used to build and run the [Apache Tika Server](https://wiki.apache.org/tika/TikaJAXRS) as a Docker Service.

## User Manual

### Predefined Commands

* Checkout the [Makefile](Makefile)

### Build

* Builds are being created automatically. See the list of available [repo builds](https://hub.docker.com/r/polster/docker-tika/builds/) for more details
* In case you want to build your own images, follow the instructions below

#### Create Image

```
make docker-build
```

#### Alternative Tika Version

* In case you need to run an alternative version of the Tika Server, you can do this by overriding the version build time argument:
```
docker build --build-arg TIKA_VERSION=1.12 --tag polster/docker-tika .
```

### Run

* Run the following command in order to start a new container in the background:
```
make docker-run-background
```
* Test if the Tika Server responds:
```
make tika-server-status
```
