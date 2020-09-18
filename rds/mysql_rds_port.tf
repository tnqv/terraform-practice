resource "aws-security-group" "rds-sg" {
  name   = "rain-rds-sg"
  vpc_id = "${var.vpc_id}"
}

resource "aws_security_group_rule" "mysql_inbound_access" {
  from_port         = 3306
  protocol          = "tcp"
  security_group_id = "${aws_security_group.rds-sg.id}"
  to_port           = 3306
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
} 