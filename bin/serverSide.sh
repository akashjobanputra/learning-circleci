#!/bin/bash

echo "Starting Deployment"
# mkdir -p /home/ec2-user/learning-circleci/
cd /home/ec2-user/project/
git pull origin $CIRCLECI_BRANCH
npm i
npm test
npm start
# cd learning-circleci
# pm2 stop api
# pm2 start api
echo "Deploy End"