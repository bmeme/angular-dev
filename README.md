# Angular development docker image

This image provides a node container with Angular CLI installed and support to build static angular sites with [Scully](https://scully.io/).

[![Maintained? Yes](https://img.shields.io/badge/Maintained%3F-Yes-success)](https://github.com/bmeme/angular-dev) ![GitHub last commit](https://img.shields.io/github/last-commit/bmeme/angular-dev) [![GitHub issues](https://img.shields.io/github/issues/bmeme/angular-dev)](https://github.com/bmeme/angular-dev/issues) ![GitHub top language](https://img.shields.io/github/languages/top/bmeme/angular-dev) ![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/bmeme/angular-dev)

## Features

- Angular CLI
- chromium
- openssh-client
- ansible
- rsync

## Vanilla versions

The image is built also in two vanilla flavours, one based on `bullseye-slim` and one on `alpine` versions of node docker image.

This version has only the Angular CLI added on top of the base node image.

To use one of this versions add `-bullseye-slim` or `-alpine` suffix to the standard image.
See [tags list](https://hub.docker.com/r/bmeme/angular-dev/tags) on DockerHub for further details.

## How to build

To build the docker image you can use the `docker build` command.

Build arguments:

- `BUILD_DATE` build datetime
- `NODE_VERSION` node image base version to use
- `NG_CLI_VERSION` desidered Angular CLI version

Following is an example of building the image with node `14.17.0` and Angular CLI `11.2.5`. The parameter `BUILD_DATE` is generated with the current datetime using `date` command.

```
NODE_VERSION=14.17.0 && \
NG_CLI_VERSION=11.2.5 && \
docker build \
    --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') \
    --build-arg NODE_VERSION=${NODE_VERSION} \
    --build-arg NG_CLI_VERSION=${NG_CLI_VERSION} \
    -t bmeme/angular-dev:${NG_CLI_VERSION}-${NODE_VERSION} .
```

The above command will build the image with the tag `bmeme/angular-dev:11.2.5-14.17.0`.

To test the newly created image, you can use `docker run`.

```
docker run --rm -it bmeme/angular-dev:11.2.5-14.17.0 ng version
```

## Use Bmeme docker images from Docker Hub

Instead of building the docker image yourself, you can use our [bmeme/angular-dev](https://hub.docker.com/r/bmeme/angular-dev) images from Docker Hub.

![Docker Image Version (latest semver)](https://img.shields.io/docker/v/bmeme/angular-dev) ![Docker Pulls](https://img.shields.io/docker/pulls/bmeme/angular-dev)

## Contributing

Any feedback, bug report or idea is extremely welcome.

Reach us through our [website](https://www.bmeme.com) or send us an email at [info@bonsaimeme.com](mailto:info@bonsaimeme.com).

## License

[MIT](https://choosealicense.com/licenses/mit/)
