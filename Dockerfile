ARG SOFTWARE_VERSION_TAG=0.231.0
FROM n8nio/n8n:${SOFTWARE_VERSION_TAG}

USER root

RUN apk add --no-cache vips-dev \
 && npm install -g sharp

USER node


