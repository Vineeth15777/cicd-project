#!/bin/bash
cd /home/ubuntu/app
docker stop $(docker ps -aq) || true
docker rm $(docker ps -aq) || true
docker build -t flask-app .
docker run -d -p 5000:5000 flask-app
