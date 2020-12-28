provider "aws" {
  region = "${var.region}"
}

resource "aws_lb" "alb" {
  name                       = "${var.alb-name}"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = ["${var.security-groups}"]
  subnets                    = ["${var.public-subnets}"]
  enable_deletion_protection = true

  tags = {
    Name = "${var.alb-tag}"
  }
}

// resource "aws_alb_listener" "frontend-listerner-80" {
// //   "default_action" {
// // 	target_group_arn	= "aws_lb_target_group.frontend-target-group.arn"
// // 	type 				= "forward"
// // 	}
// 	load_balancer_arn		= "aws_lb.alb.arn"
// 	port = 80
// }


// resource "aws_alb_listener" "frontend-listener-443" {
// 	// "default_action" {
// 	//   target_group_arn	= "aws_lb_target_group.fronend-target-group.arn"
// 	//   type 				= "forward"
// 	// }
// 	load_balancer_arn		= "aws_lb.alb.arn"
// 	port					= 443
// 	protocol				= "HTTPS"
// 	ssl_policy				= "ELBSecurityPolicy-2016-08"
// 	certificate_arn			= "var.artificatea-arn"
// }
// resource "aws_lb_target_group" "frontend-target-group" {
// 	name					= "var.tg-name"
// 	port					= "var.port"
// 	protocol				= "var.protocol"
// 	vpc_id					= "var.vpc-id"
// }


// resource "aws_alb_target_group_attachment" "frontend-attachments" {
// 	count					= "length(var.no-of-frontend-attachements)"
// 	target_group_arn		= "aws_lb_target_group.frontend-target-group.arn"
// 	target_id				= "element(var.no-of-frontend-attachments,count.index)"
// }

