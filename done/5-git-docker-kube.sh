#!/bin/bash

# git clone repository
# docker build
# kubectl apply

git clone https://github.com/robrich/...
docker build -t robrich/myapp .
docker push robrich/myapp
kubectl apply -f k8s.yaml

# run every 5 minutes

# crontab -e
# */5 * * * * ./5-git-docker-kube.sh

# https://www.freeformatter.com/cron-expression-generator-quartz.html
