module "VPC" {
  source = "modules/vpc"
}
module "SG" {
  source = "modules/SG"
}
module "IAM" {
  source = "modules/IAM"
}
module "EC2" {
  source = "modules/EC2"
}

