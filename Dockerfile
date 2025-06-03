ARG SOFTWARE_VERSION_TAG
FROM n8nio/n8n:${SOFTWARE_VERSION_TAG}

# Wechsel zu root, um Pakete zu installieren
USER root

# Installiere sharp + native lib (bei Alpine)
RUN apk add --no-cache vips-dev && \
    npm install -g sharp

# Wechsel zurück zum Standard-n8n-Benutzer
USER node

