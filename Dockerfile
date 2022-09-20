ARG NODE_VERSION
FROM node:${NODE_VERSION}-bullseye-slim

RUN apt-get update && \
    apt-get install --no-install-recommends -y chromium ca-certificates ansible openssh-client rsync && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ARG NG_CLI_VERSION
RUN npm install -g @angular/cli@$NG_CLI_VERSION

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV SCULLY_PUPPETEER_EXECUTABLE_PATH '/usr/bin/chromium'

ARG BUILD_DATE

LABEL maintainer="Michele Mondelli <michele.mondelli@bmeme.com>" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="bmeme/angular-dev" \
      org.label-schema.version="${NG_CLI_VERSION}-${NODE_VERSION}" \
      org.label-schema.description="Angular development image" \
      org.label-schema.url="https://www.bmeme.com/"
