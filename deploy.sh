#!/bin/bash
set -e

cd learn-ci-cd
git pull origin main
/root/.nvm/versions/node/v24.13.0/bin/npm install
/root/.nvm/versions/node/v24.13.0/bin/npm run build
/root/.nvm/versions/node/v24.13.0/bin/pm2 restart app || /root/.nvm/versions/node/v24.13.0/bin/pm2 start ./dist/index.js --name "app"