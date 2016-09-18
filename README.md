[![nodesource/node](http://dockeri.co/image/jtarball/docker-base)](https://hub.docker.com/r/jtarball/docker-base/)
[![](https://images.microbadger.com/badges/image/jtarball/docker-base.svg)](https://microbadger.com/images/jtarball/docker-base)

[![Circle CI](https://circleci.com/gh/JTarball/docker-base.svg?style=svg)](https://circleci.com/gh/JTarball/docker-base)

#### Supported tags and respective `Dockerfile` links

-	[`v1.0`, `v1.0b1`, `v1.0b2`, `v1.0b3`, `v1.0b4` `latest` (/Dockerfile*)](https://github.com/JTarball/docker-base/blob/master/Dockerfile)

# What is docker-base?

docker-base is a base image for a multi-container Docker web project. It will contain all the packages required for a normal web server. It was designed with django in mind and with Polymer for its frontend however it can easily be modified for any web application.


## How to use this image
### create a new folder
e.g.
```console
mkdir app
```
### create 'requirements' directory
e.g.
```console
cd app
mkdir requirements
touch requirements/base.txt requirements/dev.text requirements/prod.txt
```
### create 'docker-entrypoint.sh'
```console
touch docker-entrypoint.sh
```

docker-entrypoint.sh should contain any relevant commands, inititalisation required for a successful run of this new container. Please see Dockerfile best practices for more information.

### create a new Dockerfile
e.g.
```dockerfile
FROM jtarball/docker-base:latest
MAINTAINER James Tarball <james.tarball@gmail.com>

ENV ENV_TYPE dev
ENV APP_DIR /app

EXPOSE 8000

CMD ["app"]
```

This Dockerfile MUST include the following:
* ENV_TYPE
  - environment type for requirements install so in this example can only be ('base', 'dev', 'prod')
* APP_DIR
  - application directory

### build & run using docker-compose
e.g.
```console
docker-compose build
docker-compose up 

```

## License

View [license information](https://github.com/JTarball/docker-base/blob/master/LICENSE) for the software contained in this image.

## User Feedback

Any feedback or comments  would be greatly appreciated: <james.tarball@gmail.com>

### Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/JTarball/docker-base/issues).

You can also reach me by email. I would be happy to help  <james.tarball@gmail.com>
