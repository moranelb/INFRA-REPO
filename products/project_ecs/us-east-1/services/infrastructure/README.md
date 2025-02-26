<div align="center">

# **Deploy an ECS Cluster with Fargate & EC2 Container Instances**

</div>

A deployment for an ECS cluster with EC2 containers and Fargate.

Directory Structure:

Infrastructure ([infrastructure folder](infrastructure)):
    
- [vpc](infrastructure/vpc/) - Creates a VPC in AWS.
- [securitygroup](infrastructure/securitygroup/) - Creates a Security Group for the VPC.
- [iamrole](infrastructure/iamrole/) - Creates an IAM Role for the EC2 instances.
- [ec2template](infrastructure/ec2template/) - Creates a launch template for the EC2 instances.
- [asg](infrastructure/asg) - Creates an Auto-Scaling-Group for the management of the EC2 instances.
- [nlb](infrastructure/nlb) - Creates a NLB load balancer.
- [ecs](infrastructure/ecs) - Creates the ECS cluster with EC2 instances and Fargate.

Running the Nginx:

- [service_task](backend/service_task_nginx_ecs/) - Creates a service and task definition for deploying an Nginx server and a CloudWatch container.


**Screenshot of Nginx Deployment:**

![NGINX](/pictures/nginx_on_nlb.gif)

