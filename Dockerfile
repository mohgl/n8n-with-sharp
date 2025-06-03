FROM n8nio/n8n

# Alpine verwendet apk statt apt-get
RUN apk add --no-cache vips-dev && \
    npm install -g sharp
