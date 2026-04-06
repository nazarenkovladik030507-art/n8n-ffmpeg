FROM n8nio/n8n:2.14.2
USER root
RUN npm install --save axios
COPY custom-helpers.js /usr/local/lib/node_modules/n8n/dist/custom-helpers.js
RUN sed -i "1s/^/require('\/usr\/local\/lib\/node_modules\/n8n\/dist\/custom-helpers.js');\n/" /usr/local/lib/node_modules/n8n/dist/index.js
USER node
