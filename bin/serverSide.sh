#!/bin/bash

echo "Starting Deployment"
# mkdir -p /home/ec2-user/learning-circleci/
cd /home/ec2-user/project/
git pull origin $(git branch 2>/dev/null | grep ^* | colrm 1 2 ":%s")
npm i
npm test
# npm start &
pm2 stop api
pm2 start api
# cd learning-circleci
# pm2 stop api
# pm2 start api
echo "Deploy End"