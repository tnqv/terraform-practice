resource "aws_subnet" "subnet_public" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_subnet}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.availability_zone}"
  tags = {
      Name = "rain-subnet-test"
      Value = var.environment_tag
  }
}