FROM n8nio/n8n:2.14.2
USER root
RUN apk add --no-cache ffmpeg && npm install --global axios
COPY custom-helpers.js /home/node/.n8n/custom-helpers.js
USER node
