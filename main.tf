module "vpc" {
  source        = "./modules/vpc"
  vpc_cidrblock = var.vpc_cidrblock
  environment   = var.environment
}

module "security_groups" {
  source      = "./modules/security-groups"
  vpc_id      = module.vpc.vpc_id
  environment = var.environment
}

module "ecr" {
  source      = "./modules/ecr"
  environment = var.environment
}

module "eks" {
  source                  = "./modules/eks"
  environment             = var.environment
  vpc_id                  = module.vpc.vpc_id
  private_subnet_ids      = module.vpc.private_subnet_worker_ids
  eks_public_access_cidrs = var.eks_public_access_cidrs
}

module "rds" {
  source             = "./modules/rds"
  environment        = var.environment
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_db_ids
  rds_sg_id          = module.security_groups.rds_sg_id
  db_password        = var.db_password
}

module "lambda" {
  source      = "./modules/lambda"
  environment = var.environment
}

module "route53" {
  source      = "./modules/route53"
  domain_name = "temsfidelity.online"
  environment = var.environment
}