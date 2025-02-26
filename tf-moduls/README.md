<div align="center">

# **Modules Description**

</div>

Modules for the ECS project:

- **VPC** - A local module that creates the VPC.
- **asg** -  A local module that creates the Autoscaling group for the ECS nodes.
-  **security_group** -  A local module that creates a security_group.
-  **nlb** - A local module that creates an NLB Load-balancer.
-  **iamrole** - A local module that creates an IAM role.
-  **ec2template** - A local module that creates a Launch Template for the nodes.
-  **ecs_cluster** - A local module that creates the ECS cluster.

- **nginx_service_task** - A module that creates the backend. 
It installs nginx and sidecar.

Modules for the EKS project:

- **eks_nginx_controller** - A module that uses helm to install ingress (Nginx) and creates a security group for it.
- **eks_argocd** - A module that uses a helm chart for installing ArgoCD and set the ingress role.
