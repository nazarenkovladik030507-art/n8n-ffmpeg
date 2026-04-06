#!/bin/sh
export NODE_OPTIONS="--require /home/node/.n8n/custom-helpers.js"
exec node /usr/local/lib/node_modules/n8n/bin/n8n.js "$@"
