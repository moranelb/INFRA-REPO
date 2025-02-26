<div align="center">

# **DEVOPS Project**

</div>


This repo is a devops course project.

In this project there is a deployment of a terragrunt structure directory for deploying two projects:

   - [deploy ECS cluster](products/project_ecs/us-east-1/services/README.md) - Deploy an ECS cluster with Fargate & EC2 Container Instances. 
   - [deploy EKS cluster](products/project_eks/us-east-1/services/README.md) - Deploy EKS cluster with managed nodegorups.
   - [modules created](tf-moduls) - The required modules for the deployment.

Terragrunt uses an S3 bucket and DynamoDB to keep the tfstate files.

