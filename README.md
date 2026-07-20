# Production-Ready Two-Tier Web Application on AWS

## Overview

A highly available, scalable, and secure two-tier web application deployed using AWS cloud services, Infrastructure as Code, containerization, and CI/CD automation.

The project demonstrates real-world DevOps practices including Docker, Terraform, AWS networking, automated deployment, monitoring, and security best practices.

---

## Architecture

Current Local Architecture:

Browser
↓
Nginx Reverse Proxy
↓
Gunicorn
↓
Flask Application


AWS Target Architecture:

Users
↓
Application Load Balancer
↓
EC2 Auto Scaling Group
↓
RDS MySQL Database


---

## Features

- Flask web application
- Docker containerization
- Gunicorn production server
- Nginx reverse proxy
- Docker Compose
- Health check endpoint
- AWS deployment
- Terraform Infrastructure as Code
- GitHub Actions CI/CD
- CloudWatch monitoring

---

## Tech Stack

- Python Flask
- Docker
- Docker Compose
- Nginx
- Gunicorn
- AWS
- Terraform
- GitHub Actions
- Linux
- MySQL

---

## Project Progress

### Completed

✅ Flask Application  
✅ Docker Containerization  
✅ Gunicorn Setup  
✅ Nginx Reverse Proxy  
✅ Docker Compose Local Deployment  

### Upcoming

- AWS VPC Architecture
- EC2 Deployment
- Application Load Balancer
- Auto Scaling
- Amazon RDS
- Terraform Infrastructure
- CI/CD Pipeline
- Monitoring
