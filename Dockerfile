FROM n8nio/n8n:2.14.2

USER root

# Встановити ffmpeg
RUN apk add --no-cache ffmpeg

# Встановити axios для custom helpers
RUN npm install --save axios

# Копіювати custom helpers
COPY custom-helpers.js /usr/local/lib/node_modules/n8n/dist/custom-helpers.js

USER node
