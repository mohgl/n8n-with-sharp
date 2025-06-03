FROM n8nio/n8n

# Wechsel zu root, um Pakete zu installieren
USER root

# Installiere sharp + native lib
RUN apk add --no-cache vips-dev && \
    npm install -g sharp

# Wechsel zurück zum Standard-n8n-Benutzer
USER node
