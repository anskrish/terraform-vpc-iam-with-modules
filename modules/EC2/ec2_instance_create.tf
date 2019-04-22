module "vpc" {
  source = "../vpc"
}
module "SG" {
  source = "../SG"
}
module "IAM" {
  source = "../IAM"
}
#resource "aws_instance" "my-test-instance" {
#  ami             = "ami-0565af6e282977273"
#  instance_type   = "t2.micro"
#  iam_instance_profile = "${aws_iam_instance_profile.test_profile.name}"
#  key_name             = "kri007"
#  iam_instance_profile = "${aws_iam_instance_profile.IAM_profile.name}"
#  security_groups = ["${aws_security_group.app-server.id}"]
#  tags {
#    Name = "test-instance"
#  }
#  subnet_id = "${aws_subnet.private-subnet-A.id}"
#}
resource "aws_instance" "blue-1-instance" {
  ami             = "ami-0b500ef59d8335eee"
  instance_type   = "t2.micro"
  key_name = "my-ohio-key"
  security_groups = ["${module.SG.aws_app_server_SG}"]
  iam_instance_profile = "${module.IAM.aws_iam_instance_profile.IAM_profile}"

  tags {
    Name = "Blue-1"
  }
  subnet_id = "${module.vpc.aws_subnet.private-subnet-A}"
}
