# Application Load Balancer

resource "aws_lb" "app" {

  name = "${var.project_name}-alb"

  internal = false

  load_balancer_type = "application"

  security_groups = [
    aws_security_group.alb.id
  ]

  subnets = aws_subnet.public[*].id

  tags = {
    Name = "${var.project_name}-alb"
  }
}


# Target Group

resource "aws_lb_target_group" "app" {

  name = "${var.project_name}-tg"

  port = 5000

  protocol = "HTTP"

  target_type = "instance"

  vpc_id = aws_vpc.main.id

  health_check {

    enabled = true

    path = "/health"

    protocol = "HTTP"

    matcher = "200"

    interval = 30

    timeout = 5

    healthy_threshold = 2

    unhealthy_threshold = 2
  }

  tags = {
    Name = "${var.project_name}-tg"
  }
}
