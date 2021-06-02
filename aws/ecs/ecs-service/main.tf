############ ECS Service ##############
resource "aws_ecs_service" "ecs_service" {
  name                 = "${var.name}-ecs-service"
  cluster              = var.cluster_id
  task_definition      = var.task_definition_arn
  desired_count        = var.desired_count
  iam_role             = var.ecs_iam_role
  force_new_deployment = var.force_new_deployment
  launch_type          = "FARGATE"
  platform_version     = var.platform_version
  deployment_controller {
    type = "ECS"
  }
  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  load_balancer {
    target_group_arn = var.lb_tg_arn
    container_name   = var.name
    container_port   = var.port
  }
  network_configuration {
    security_groups  = var.security_group_id
    subnets          = var.subnets
    assign_public_ip = var.assign_public_ip
  }
  depends_on = [var.aws_alb]
  lifecycle {
    ignore_changes = [desired_count]
  }
}
