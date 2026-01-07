variable "cluster_role_arn" {
  description = "IAM Role ARN for EKS Cluster"
  type        = string
  default     = "arn:aws:iam::851725605085:role/labrole"
}

variable "worker_role_arn" {
  description = "IAM Role ARN for EKS Worker Nodes"
  type        = string
  default     = "arn:aws:iam::851725605085:role/labrole"
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "project-node-group"
}
