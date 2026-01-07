variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "project-node-group"
}

variable "cluster_role_arn" {
  description = "Existing IAM Role ARN for EKS Cluster"
  type        = string
}

variable "worker_role_arn" {
  description = "Existing IAM Role ARN for EKS Worker Nodes"
  type        = string
}
