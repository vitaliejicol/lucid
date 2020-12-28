output "aws-instance" {
  value = ["aws_instance.ec2.*.id"]
}
