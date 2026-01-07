# اسم مجموعة الـ Nodes في الـ EKS
variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "project-node-group"
}

# الـ ARN للـ IAM Role الخاص بالـ Cluster (موجود مسبقًا)
variable "cluster_role_arn" {
  description = "Existing IAM Role ARN for EKS Cluster"
  type        = string
}

# الـ ARN للـ IAM Role الخاص بالـ Worker Nodes (موجود مسبقًا)
variable "worker_role_arn" {
  description = "Existing IAM Role ARN for EKS Worker Nodes"
  type        = string
}
