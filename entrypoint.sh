#!/bin/sh
export NODE_OPTIONS="--require /home/node/.n8n/custom-helpers.js"
exec "$@"
