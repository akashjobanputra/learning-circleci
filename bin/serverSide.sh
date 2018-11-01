#!/bin/bash

echo "Starting Deployment"
# mkdir -p /home/ec2-user/learning-circleci/
cd /home/ec2-user/
git pull 
npm i
npm test
# cd learning-circleci
pm2 stop api
pm2 start api
echo "Deploy End"