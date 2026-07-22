#!/bin/bash
set -xe

dnf update -y

dnf install -y docker awscli

systemctl enable docker
systemctl start docker

sleep 20

aws ecr get-login-password --region eu-west-1 | docker login \
--username AWS \
--password-stdin 100038279691.dkr.ecr.eu-west-1.amazonaws.com


docker pull 100038279691.dkr.ecr.eu-west-1.amazonaws.com/aws-two-tier-app:latest


docker run -d \
--name aws-two-tier-app \
-p 5000:5000 \
--restart always \
100038279691.dkr.ecr.eu-west-1.amazonaws.com/aws-two-tier-app:latest


echo "DONE" > /home/ec2-user/startup-complete.txt
