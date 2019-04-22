output "aws_vpc.main" {
  value = "${aws_vpc.main.id}"
}
output "aws_subnet.private-subnet-A" {
  value = "${aws_subnet.private-subnet-A.id}"
}
