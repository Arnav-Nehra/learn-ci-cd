#!/bin/bash
set -e

# Set PATH to use the correct Node version
export PATH="/root/.nvm/versions/node/v24.13.0/bin:$PATH"

cd learn-ci-cd
git pull origin main
npm install
npm run build
pm2 restart app || pm2 start ./dist/index.js --name "app"