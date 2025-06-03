ARG SOFTWARE_VERSION_TAG=0.231.0
FROM n8nio/n8n:${SOFTWARE_VERSION_TAG}

# Installiere native deps und sharp als root
USER root

RUN apk add --no-cache vips-dev \
 && npm install -g sharp \
 && chown -R node:node /home/node

USER node



