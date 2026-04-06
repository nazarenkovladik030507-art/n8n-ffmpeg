FROM n8nio/n8n:2.14.2
USER root
RUN apk add --no-cache ffmpeg
RUN npm install --save axios
COPY custom-helpers.js /home/node/.n8n/custom-helpers.js
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
USER node
ENTRYPOINT ["/entrypoint.sh"]
