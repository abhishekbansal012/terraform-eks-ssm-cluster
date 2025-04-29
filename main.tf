provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  region = var.region
}

module "iam" {
  source        = "./modules/iam"
  cluster_name  = var.cluster_name
}

module "eks" {
  source         = "./modules/eks"
  cluster_name   = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids     = module.vpc.public_subnet_ids
  vpc_id         = module.vpc.vpc_id
  node_role_arn  = module.iam.node_role_arn
  instance_type  = var.node_instance_type
}
