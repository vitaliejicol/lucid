provider "aws" {
  region = "${var.region}"
}

resource "aws_vpc" "vpc" {
  cidr_block = "${var.vpc-cidr}"

  tags = {
    Name = "${var.vpc-name}"
  }
}

//Creating  a internet gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"

  // tags {
  // 	Name = "var.internet-gateway-name"
  // }
}

//Create public Subnets

resource "aws_subnet" "public-subnets" {
  availability_zone       = "${element(data.aws_availability_zones.azs.names,count.index)}"
  count                   = "${length(var.vpc-public-subnet-cidr)}"
  cidr_block              = "${element(var.vpc-public-subnet-cidr, count.index)}"
  vpc_id                  = "${aws_vpc.vpc.id}"
  map_public_ip_on_launch = "${var.map_public_ip_on_launch}"

  tags = {
    Name = "${var.public-subnets-name}"
  }
}

//Creating a public routes

resource "aws_route_table" "public-routes" {
  vpc_id = "${aws_vpc.vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  // tags {
  // 	Name = "var.public-subnet-routes-name"
  // }
}

//Create public route association

resource "aws_route_table_association" "public-association" {
  count          = "${length(data.aws_availability_zones.azs.names)}"
  route_table_id = "${aws_route_table.public-routes.id}"
  subnet_id      = "${element(aws_subnet.public-subnets.*.id, count.index)}"
}

//Create private subnets
resource "aws_subnet" "private-subnets" {
  availability_zone = "${element(data.aws_availability_zones.azs.names,count.index)}"
  count             = "${length(var.vpc-private-subnets-cidr)}"
  cidr_block        = "${element(var.vpc-private-subnets-cidr,count.index)}"
  vpc_id            = "${aws_vpc.vpc.id}"
  
  tags = {
    Name = "${var.private-subnet-name}"
  }
}

// Create EIP nat-gateway
resource "aws_eip" "eip-ngw" {
  count = "${var.total-nat-gateway-required}"

  // tags {
  // 	Name				= "var.eip-for-nat-gateway-name - count.index+1"
  // }
}

//Create NAT Gateway and attach to public subnets
resource "aws_nat_gateway" "ngw" {
  count         = "${var.total-nat-gateway-required}"
  allocation_id = "${element(aws_eip.eip-ngw.*.id,count.index)}"
  subnet_id     = "${element(aws_subnet.public-subnets.*.id,count.index)}"

  // tags {
  // 	Name = "var.nat-gatewa-name - count.index+1"
  // }
}

//Create private route associations

resource "aws_route_table_association" "private-association" {
  count          = "${length(data.aws_availability_zones.azs.names)}"
  route_table_id = "${aws_route_table.public-routes.id}"
  subnet_id      = "${element(aws_subnet.private-subnets.*.id,count.index)}"
}
