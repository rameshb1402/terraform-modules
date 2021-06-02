resource "aws_instance" "ec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  user_data              = data.template_file.user_data.rendered
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  iam_instance_profile   = var.iam_instance_profile
  monitoring             = true
  # delete_on_termination  = false

  root_block_device {
    volume_type           = "gp2"
    volume_size           = "50"
    delete_on_termination = "true"
    encrypted             = true
    kms_key_id            = var.kms_key_id
  }

  tags = merge(
    map("Name", "${var.name}-${var.environment}")
  )
}

data "template_file" "user_data" {
  template = file("templates/${var.user_data}.tpl")
}