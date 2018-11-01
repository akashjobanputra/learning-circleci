#!/bin/bash
## Let's try to build and deploy the projec now
# git checkout master


# tar -zcvf learning-circleci.tar.gz /home/circleci/project/*
echo '###########'
echo 'Copying the build to the server'
echo '###########'
scp ~/project/ $SSH_USER@$SSH_HOST:/home/$SSH_USER
echo '###########'
echo 'Extacting the build to the server and executing it'
echo '###########'
ssh $SSH_USER@$SSH_HOST 'mkdir /home/$SSH_USER/learning-circleci && tar -xvzf learning-circleci.tar.gz -C learning-circleci/'
ssh $SSH_USER@$SSH_HOST 'cd learning-circleci/ && npm start'
