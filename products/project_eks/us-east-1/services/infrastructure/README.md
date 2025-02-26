<div align="center">

# **Deploy an EKS Cluster with Managed Nodegorups**


</div>


# Task 

An installation of an EKS cluster with 2 nodes and delpoying ArgoCD. 
The setting is set to work on HTTP as no SSL is used.
The installation is located in the infrastructure directory.

Directory Structure:

**vpc** - Deploying a private VPC. The creation of the VPC was performed using module from terraform repository (https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest).

**eks** - Deploying an eks cluster with 2 nodes (t2.medium - as ArgoCD requires more resources then the default t2.micro). 
The deployment of the EKS was performed using a module from terraform repository
(https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest).

**nlb**
    An installation of nginx-ingress and deploying the NLB loadbalancer. 
    It is based on a module created for installing the ingress (Nginx) on the EKS cluster 
    (tf-modules\eks_nginx_controller)
    Before applying the nginx-ingress there is a need to download the help repo:

        helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
        helm repo update

**argocd_install** - Deploying an ArgoCD on the EKS cluster and setting the ingress (Nginx) configmap exposing it to the internet. 
The deployment of the ArgoCD was performed using a module from the 
terraform repository (https://registry.terraform.io/modules/squareops/argocd/kubernetes/latest).

**Screenshots showing the installation:**

Pods deployment:
![pods](/pictures/eks_pods.gif)

Ingress:
![ingress](/pictures/eks_ingress.gif)

SVC
![SVC](/pictures/eks_svc.gif)

ArgoCD web:
![Argo-cd](/pictures/eks_argocd_web.gif)
