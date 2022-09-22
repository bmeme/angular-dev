ARG NODE_VERSION
FROM node:${NODE_VERSION}-bullseye-slim

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ARG NG_CLI_VERSION
RUN npm i -g npm@latest && npm i -g @angular/cli@$NG_CLI_VERSION

ARG BUILD_DATE

LABEL maintainer="Michele Mondelli <michele.mondelli@bmeme.com>" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="bmeme/angular-dev" \
      org.label-schema.version="${NG_CLI_VERSION}-${NODE_VERSION}-bullseye-slim" \
      org.label-schema.description="Angular development image based on node bullseye slim" \
      org.label-schema.url="https://www.bmeme.com/"
