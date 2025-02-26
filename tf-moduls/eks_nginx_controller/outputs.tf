output "nginx_ingress_loadbalancer_hostname" {
  description = "The external hostname of the NGINX ingress controller"
  value       = kubernetes_service.nginx_ingress.status.0.load_balancer.0.ingress.0.hostname
}

output "nginx_ingress_loadbalancer_ip" {
  description = "The external IP of the NGINX ingress controller"
  value       = kubernetes_service.nginx_ingress.status.0.load_balancer.0.ingress.0.ip
}

output "nginx_ingress_service_name" {
  description = "The name of the NGINX ingress controller service"
  value       = helm_release.ingress-nginx.metadata.0.name
}

output "nginx_ingress_namespace" {
  description = "Namespace where NGINX ingress is installed"
  value       = helm_release.ingress-nginx.namespace
}

output "security_group_id" {
  description = "The security group ID created for the NLB"
  value       = aws_security_group.nlb_sg.id
}
