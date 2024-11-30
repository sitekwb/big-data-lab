locals {
  main_subnet_address  = "10.10.10.0/24"
  notebook_vpc_name    = "main-vpc"
  notebook_subnet_name = "dataproc-01"
}

module "vpc" {
  source         = "./modules/vpc"
  project_name   = var.project_name
  region         = var.region
  network_name   = local.notebook_vpc_name
  subnet_name    = local.notebook_subnet_name
  subnet_address = local.main_subnet_address
}