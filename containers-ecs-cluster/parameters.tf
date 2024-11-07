resource "aws_ssm_parameter" "lb_arn" {
  name  = "/${var.project_name}/ecs/lb/id"
  value = aws_lb.main.arn
  type  = "String"
}

resource "aws_ssm_parameter" "lb_listener" {
  name  = "/${var.project_name}/ecs/lb/listener"
  value = aws_lb_listener.main.arn
  type  = "String"
}