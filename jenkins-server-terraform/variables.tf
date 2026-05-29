# Core Configuration

variable "region" {
  description = "The AWS region to create resources in."
  default     = "ap-south-1"
}

# Networking Configuration

variable "vpc_name" {
  description = "The name of the VPC."
  default     = "jenkins-vpc"
}

variable "igw_name" {
  description = "The name of the Internet Gateway."
  default     = "jenkins-igw"
}

variable "subnet_name" {
  description = "The name of the subnet."
  default     = "jenkins-subnet"
}

variable "route_table_name" {
  description = "The name of the route table."
  default     = "jenkins-route-table"
}

# Security

variable "security_group_name" {
  description = "The name of the security group."
  default     = "jenkins-sg"
}

# Instance Configuration

variable "instance_name" {
  description = "The name of the EC2 instance."
  default     = "jenkins-server"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "m7i-flex.large"
}


# Key Pair

variable "key_name" {
  description = "The name of the SSH key pair to access the instance."
  default     = "linux-key"
}

# IAM Role

variable "iam_role_name" {
  description = "The IAM role name for jenkins instance."
  default     = "jenkins-server-iam-role"
}

variable "eks_cluster_name" {
  description = "The name of the EKS cluster."
  default     = "jenkins-eks-cluster"
}

variable "eks_version" {
  description = "The Kubernetes version for the EKS cluster."
  default     = "1.30"
}

variable "eks_node_instance_type" {
  description = "The EC2 instance type for EKS worker nodes."
  default     = "m7i-flex.large"
}

variable "eks_node_desired_capacity" {
  description = "Desired number of EKS worker nodes."
  default     = 2
}

variable "eks_node_min_size" {
  description = "Minimum number of EKS worker nodes."
  default     = 1
}

variable "eks_node_max_size" {
  description = "Maximum number of EKS worker nodes."
  default     = 3
}

variable "eks_cluster_role_name" {
  description = "IAM role name for the EKS cluster."
  default     = "jenkins-eks-cluster-role"
}

variable "eks_node_role_name" {
  description = "IAM role name for the EKS node group."
  default     = "jenkins-eks-node-role"
}
