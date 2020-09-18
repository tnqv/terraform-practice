resource "aws_instance" "ec2_instance" {
 ami = "ami-0cf31d971a3ca20d6"
 instance_type = "t2.micro"
}