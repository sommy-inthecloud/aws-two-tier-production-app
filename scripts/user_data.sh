#!/bin/bash

# Update packages
dnf update -y

# Install Docker
dnf install docker -y

# Enable Docker
systemctl enable docker

# Start Docker
systemctl start docker

# Add ec2-user to docker group
usermod -aG docker ec2-user

# Verify Docker installation
docker --version > /home/ec2-user/docker-version.txt
