FROM ubuntu:22.04 AS ffmpeg-builder
RUN apt-get update && apt-get install -y ffmpeg && apt-get clean

FROM n8nio/n8n:2.14.2
USER root
COPY --from=ffmpeg-builder /usr/bin/ffmpeg /usr/bin/ffmpeg
COPY --from=ffmpeg-builder /usr/bin/ffprobe /usr/bin/ffprobe
RUN npm install --save axios
COPY custom-helpers.js /usr/local/lib/node_modules/n8n/dist/custom-helpers.js
USER node
