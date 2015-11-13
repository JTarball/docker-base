[![nodesource/node](http://dockeri.co/image/jtarball/docker-base)](https://hub.docker.com/r/jtarball/docker-base/)


# Supported tags and respective `Dockerfile` links

-	[`3.0.5`, `3.0`, `3`, `latest` (*3.0/Dockerfile*)](https://github.com/docker-library/redis/blob/8929846148513a1e35e4212003965758112f8b55/3.0/Dockerfile)

# What is docker-base?

docker-base is a base image for a multi-container Docker web project. It will contain all the packages required for a normal web server. It was designed with django in mind and with Polymer for its frontend however it can easily be modified for any web application.



# How to use this image
## create a new folder named '<new_docker_image_name>'
e.g.
```console
$ mkdir app
```
### create 'requirements' directory
e.g.
```console
$ cd app
$ mkdir requirements
$ touch requirements/base.txt requirements/dev.text requirements/prod.txt
```
### create 'docker-entrypoint.sh'
```console
$ touch docker-entrypoint.sh
```
## create a new Dockerfile
e.g.
```console
FROM jtarball/docker-base:latest
MAINTAINER James Tarball <james.tarball@gmail.com>

ENV ENV_TYPE dev
ENV APP_DIR /app

EXPOSE 8000

CMD ["app"]
```

This Dockerfile MUST include the following:
 - ENV_TYPE     - environment type for requirements install so in this example can only be ('base', 'dev', 'prod')
 - APP_DIR      - application directory

## build & run using docker-compose
e.g.
```console
$ docker-compose build
$ docker-compose up 
```

# License

View [license information](https://github.com/JTarball/docker-base/blob/master/LICENSE) for the software contained in this image.

# User Feedback

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/JTarball/docker-base/issues).

You can also reach me by email. I would be happy to help  <james.tarball@gmail.com>