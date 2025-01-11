# AWS Infrastructure Automation

The underline terraform script automates maintainance of below resources on AWS.

1. A Server running Docker
    1. SSH Access
    2. Nginx Server

2. A Static Website hosting
    1. AWS S3
    2. AWS Cloudfront

3. Terraform state file backup
    1. DynamoDB to manage lock files
    2. S3 to store state files

## A Server running Docker
This server will be used to deploy docker containers for complex React/NextJS apps with API and Databases.

This server should enable the following
- SSH access to manage ec2 instance
    - 
#- Git install on ec2 creaion
- Docker install on the ec2 cration.
- Start docker service on boot.
    States - Pending, Running, Terminated, Stopped, Reboot, Shutting down, Stopping
- Run the dockerized apps on boot. docker run image:latest
- Store dockerhub, aws credentials on this ec2.
    Docker Image Repository
        - A new private repo
        - Apna latest live wala image rakhenge.
        - App me changes karo for ex H1 title change kar diya.
        - Fir docker build karo. Jisse ki naye image me naye changes reflect ho jaye.
        - [Only for Prod] Push this image to dockerhub.
        - docker run image:latest
- 

## A Static Website hosting
We will deploy 
- frontend build to S3 and and
- Access it via a Cloudfront CDN url
