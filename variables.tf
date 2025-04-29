variable "region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "my-eks-cluster"
}

variable "cluster_version" {
  default = "1.32"
}

variable "node_instance_type" {
  default = "t3.medium"
}
