# 🚀 Production-Ready Two-Tier Web Application on AWS

![AWS Architecture](images/aws-two-tier-architecture.png)

## 📌 Project Overview

Modern startups and businesses require applications that are reliable, scalable, secure, and easy to deploy. Traditional single-server deployments create challenges such as:

- Application downtime when servers fail
- Manual deployments
- Limited scalability
- Poor infrastructure visibility
- Security risks

This project demonstrates the design and deployment of a **production-style two-tier web application architecture on AWS** using Cloud Engineering and DevOps best practices.

The solution provides:

✅ Highly available application hosting  
✅ Automated infrastructure provisioning  
✅ Containerized application deployment  
✅ Secure database architecture  
✅ Auto Scaling capabilities  
✅ Monitoring and alerting  
✅ Secure secrets management  


---

# 🎯 Business Problem

Many small businesses begin with applications running on a single server.

This creates problems:

- A server failure causes application downtime
- Deployments require manual processes
- Infrastructure is difficult to recreate
- Database security is limited
- Scaling during traffic increases becomes challenging


---

# 💡 Proposed Solution

A highly available AWS architecture was designed using:

- Application Load Balancer
- Auto Scaling Group
- EC2 Docker containers
- Amazon RDS MySQL
- Terraform Infrastructure as Code
- GitHub Actions CI/CD
- Amazon ECR
- CloudWatch Monitoring
- AWS Secrets Manager

---

# 🏗️ Architecture Overview
                    Users
                       |
                       |
                       v

             Application Load Balancer

                       |
                       |

          Auto Scaling Group

         ---------------------
         |                   |
         v                   v

      EC2 Instance       EC2 Instance
      Docker App         Docker App


                       |
                       v

                 Amazon RDS MySQL


---
# ☁️ AWS Services Used

## Networking

## Amazon VPC

Implemented:

- Custom VPC
- Public subnets
- Private subnets
- Internet Gateway
- NAT Gateway
- Route Tables


---

## Compute

## Amazon EC2

Features:

- Amazon Linux 2023
- Docker runtime
- Private subnet deployment
- IAM instance profile
- AWS Systems Manager (SSM) management access


---

## Load Balancing

## Application Load Balancer

Provides:

- Traffic distribution
- Health checks
- High availability
- Fault tolerance


---

## Auto Scaling

Configured:

| Setting | Value |
|---|---|
| Minimum | 1 instance |
| Desired | 2 instances |
| Maximum | 3 instances |

The Auto Scaling Group automatically replaces unhealthy instances and maintains application availability.


---

# Database

## Amazon RDS MySQL

Features:

- Managed relational database
- Private subnet deployment
- Security group controlled access
- Multi-tier architecture


---

# 🛠️ Technology Stack

| Category | Technology |
|---|---|
| Cloud Provider | AWS |
| Infrastructure as Code | Terraform |
| CI/CD | GitHub Actions |
| Containers | Docker |
| Registry | Amazon ECR |
| Application | Python Flask |
| Database | MySQL |
| Operating System | Amazon Linux 2023 |
| Monitoring | Amazon CloudWatch |
| Secrets Management | AWS Secrets Manager |
| Version Control | GitHub |


---

# ⚙️ Infrastructure as Code

Terraform provisions the complete AWS environment.

## Created Resources:

- VPC
- Subnets
- Route Tables
- Security Groups
- Application Load Balancer
- Target Groups
- Launch Templates
- Auto Scaling Group
- EC2 Instances
- RDS Database
- IAM Roles


---

## Terraform Remote State

Terraform state is stored remotely using:

- Amazon S3 backend
- State locking
- Encryption


### Benefits:

- Team collaboration
- State protection
- Infrastructure consistency
- Safer Terraform deployments


---

# 🐳 Container Deployment

The Flask application is containerized using Docker.

Docker provides:

- Consistent application environments
- Portable deployments
- Simplified application delivery

The Docker image is stored in Amazon ECR and pulled by EC2 instances during deployment.

# 🚀 CI/CD Pipeline

Implemented using **GitHub Actions**.

## Pipeline Flow

```
GitHub Push

      |
      v

GitHub Actions

      |
      v

Docker Build

      |
      v

Push Image to Amazon ECR

      |
      v

Terraform Deployment

      |
      v

Production Environment
```


## Pipeline Features

✅ Automated Docker builds  
✅ Docker image publishing to Amazon ECR  
✅ Infrastructure validation  
✅ Deployment approval process  
✅ Production deployment workflow  


---

# 🔐 Security Implementation

## Network Security

Implemented:

- Application Load Balancer deployed in public subnets
- EC2 instances deployed in private subnets
- RDS database deployed in private subnets
- Restricted security group communication


## Traffic Flow

```
Internet

   |

   v

ALB :80


ALB

   |

   v

EC2 :5000


EC2

   |

   v

RDS :3306
```


---

## IAM Security

Implemented:

- EC2 IAM Role
- AWS Systems Manager access
- Amazon ECR read-only access
- CloudWatch Agent permissions
- AWS Secrets Manager access


---

# 🔑 Secrets Management

Database credentials are stored securely using:

**AWS Secrets Manager**


## Benefits:

- No credentials stored in GitHub
- Centralized secret management
- Improved security posture
- Reduced risk of credential exposure


---

# 📊 Monitoring & Observability

Amazon CloudWatch provides operational visibility into the application infrastructure.


## Configured Metrics:

- CPU utilization
- Memory usage
- Disk utilization


---

# CloudWatch Alarms

Implemented monitoring alarms:


## CPU Alarm

Trigger:

```
CPU usage >= 80% for 5 minutes
```


## Memory Alarm

Trigger:

```
Memory usage >= 85%
```


## Disk Alarm

Trigger:

```
Disk usage >= 80%
```


---

## Alert Flow

```
CloudWatch Alarm

        |

        v

SNS Topic

        |

        v

Email Notification
```


---

# 📊 Deployment Screenshots

## AWS Architecture

![Architecture](images/aws-two-tier-architecture.png)

---

## EC2 Instances

![EC2](images/ec2.png)

---

## Application Load Balancer

![ALB](images/alb.png)

---

## Auto Scaling Group

![ASG](images/asg.png)

---

## Target Group Health Checks

![Target Group](images/target-group.png)

---

## Amazon RDS

![RDS](images/rds.png)

---

## Amazon ECR Repository

![ECR](images/ecr.png)

---

## Running Application

![Application](images/application.png)

---

## Terraform Deployment

![Terraform](images/terraform-apply.png)


---

# 📈 High Availability Features

This architecture provides:

✅ Multiple availability zones  
✅ Load-balanced traffic  
✅ Automatic instance replacement  
✅ Private application servers  
✅ Managed database service  
✅ Reproducible infrastructure  

## Monitoring and Observability

The application uses Amazon CloudWatch Agent and CloudWatch Alarms to provide production monitoring and operational visibility.

### CloudWatch Dashboard

Configured metrics:

- CPU utilization
- Memory usage
- Disk utilization

![Cloudwatch Dashboard](images/cloudwatch-dashboard.png)


### CloudWatch Alarms

Configured alarms:

### High CPU Alarm
Monitors Auto Scaling Group CPU utilization.

Trigger:
- CPU usage >= 80% for 5 minutes

![CPU Alarm](images/cpu-alarm.png)

### High Memory Alarm
Monitors EC2 memory consumption using CloudWatch Agent.

Trigger:
- Memory usage >= 85% for 5 minutes

![Memory Alarm](images/memory-alarm.png)

### High Disk Alarm
Monitors EC2 disk utilization.

Trigger:
- Disk usage >= 80% for 5 minutes

![Disk Alarm](images/disk-alarm.png)

### SNS Notifications

CloudWatch alarms publish notifications through Amazon SNS.

Alert flow:

CloudWatch Alarm  
⬇️  
SNS Topic  
⬇️  
Email Notification

---

---

# 🧠 Challenges & Solutions


## Terraform State Management

### Challenge:

Managing Terraform state safely and consistently.


### Solution:

Implemented:

- Amazon S3 remote backend
- State locking
- Encrypted Terraform state storage


---

## EC2 Monitoring

### Challenge:

Default EC2 metrics do not provide memory and disk utilization.


### Solution:

Installed and configured the Amazon CloudWatch Agent to collect custom system metrics.


---

## Secure Credentials

### Challenge:

Avoid storing database passwords directly in Terraform variables.


### Solution:

Integrated AWS Secrets Manager for secure credential storage.


---

# 💰 Cost Optimization Considerations

Implemented cost-conscious design:

- EC2 Auto Scaling prevents over-provisioning
- Private subnets reduce unnecessary public exposure
- Terraform enables infrastructure lifecycle management
- CloudWatch monitoring prevents resource waste
- RDS sizing can be adjusted based on workload

# 📈 Skills Demonstrated


## Cloud Engineering

- AWS architecture design
- VPC networking
- EC2 deployment
- RDS management
- Load balancing
- Auto Scaling


---

## DevOps

- Terraform (Infrastructure as Code)
- Docker containerization
- GitHub Actions
- CI/CD pipelines
- Linux administration


---

## Security

- IAM
- Secrets management
- Private networking
- Security Groups
- Least privilege access


---

# 🔮 Future Improvements

Potential upgrades:

- Blue/Green deployments
- Kubernetes with Amazon EKS
- AWS WAF protection
- Multi-region disaster recovery
- Application performance monitoring

---
# 📚 Lessons Learned

Through this project I gained practical experience with:

- Designing highly available AWS architectures
- Managing infrastructure using Terraform
- Deploying containerized applications
- Implementing secure cloud networking
- Monitoring production workloads
- Automating deployments with CI/CD

# ⭐ Project Status

✅ AWS infrastructure deployed  
✅ Terraform automation completed  
✅ Docker deployment completed  
✅ CI/CD pipeline implemented  
✅ Monitoring configured  
✅ CloudWatch alarms configured  
✅ Secrets Manager integrated  
✅ Production environment operational  

---

# 👩🏽‍💻 Author

**Chisomaga Anyasodor**

Cloud Engineering | AWS | DevOps


LinkedIn:

https://www.linkedin.com/in/chisomaga-a-685ba1408


---