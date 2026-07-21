resource "aws_autoscaling_group" "app" {

  name = "${var.project_name}-asg"

  min_size         = 1
  max_size         = 3
  desired_capacity = 2

  vpc_zone_identifier = [
    aws_subnet.private[0].id,
    aws_subnet.private[1].id
  ]

  target_group_arns = [
    aws_lb_target_group.app.arn
  ]

  health_check_type = "ELB"

  launch_template {
    id      = aws_launch_template.app.id
    version = "$Latest"
  }

  tag {
    key   = "Name"
    value = "${var.project_name}-instance"

    propagate_at_launch = true
  }

}
