//Output of VCP-ID
output "vpc-id" {
  description = "The ID of the VPC"
  value       = "${aws_vpc.vpc.id}"
}

//Output of IGW
output "igw" {
  value = "${aws_internet_gateway.igw.id}"
}

//Output of Public Subnets

output "public-subnets-ids" {
  description = "Public Subnets IDS"
  value       = "${aws_subnet.public-subnets.*.id}"
}

//Output of EIP for NAT Gateways
output "eip-ngw" {
  value = "${aws_eip.eip-ngw.*.id}"
}

//Ouput of NAT Gateway
output "ngw" {
  value = "${aws_nat_gateway.ngw.*.id}"
}

//Output of private subnet IDS
output "private-subnet-ids" {
  description = "Private Subnets IDS"
  value       = "${aws_subnet.private-subnets.*.id}"
}

//Output of public subnet association with public route tables

output "public-association" {
  value = "${aws_route_table_association.public-association.*.id}"
}

//Output of public routes ID
output "aws-route-table-public-routes-id" {
  value = "${aws_route_table.public-routes.*.id}"
}

//Output of region AZs
output "aws-availabillity-zones" {
  value = "${data.aws_availability_zones.azs.names}"
}
