FROM n8nio/n8n:2.14.2

USER root

# Встановити ffmpeg
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Встановити axios
RUN npm install --save axios

# Копіювати custom helpers
COPY custom-helpers.js /usr/local/lib/node_modules/n8n/dist/custom-helpers.js

USER node
