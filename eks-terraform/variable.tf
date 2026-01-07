variable "cluster_role_arn" {
  description = "Existing IAM Role ARN for EKS Cluster"
  type        = string
  default     = "arn:aws:iam::851725605085:role/aws-service-role/eks.amazonaws.com/AWSServiceRoleForAmazonEKS"
}

variable "worker_role_arn" {
  description = "Existing IAM Role ARN for EKS Worker Nodes"
  type        = string
  default     = "arn:aws:iam::851725605085:role/aws-service-role/eks-nodegroup.amazonaws.com/AWSServiceRoleForAmazonEKSNodegroup"
}
