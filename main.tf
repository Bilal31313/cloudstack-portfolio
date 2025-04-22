# Root main.tf
module "network" {
  source              = "./modules/network"
  vpc_cidr_block      = "10.0.0.0/16"
  public_subnet_count = 2
  availability_zones  = ["eu-west-2a", "eu-west-2b"]
  project_name        = "cloudstack"
}

module "compute" {
  source         = "./modules/compute"
  vpc_id         = module.network.vpc_id
  subnet_id      = module.network.public_subnet_ids[0]
  project_name   = "cloudstack"
  ami_id         = "ami-0a94c8e4ca2674d5a"  # Example Ubuntu 22.04 AMI in eu-west-2
  instance_type  = "t2.micro"
}
