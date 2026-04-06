FROM n8nio/n8n:2.14.2
USER root
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*
RUN npm install --save axios
COPY custom-helpers.js /home/node/.n8n/custom-helpers.js
USER node
ENV NODE_OPTIONS="--require /home/node/.n8n/custom-helpers.js"
