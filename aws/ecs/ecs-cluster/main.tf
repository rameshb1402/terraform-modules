########### ECS Cluster ############
resource "aws_ecs_cluster" "ecs_cluster" {
  name = var.name
  setting {
    name  = "containerInsights"
    value = "enabled"
  }
    tags = merge(
    var.common_tags,
    tomap({"Classification"= "private","Name"= var.environment})
  )
}