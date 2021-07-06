Below example is to use ec2 module.
```
module "ec2" {
  source                 = "github.com/cloudveto/terraform-modules/aws/ec2"
  ami                    = "ami-123456"
  environment            = var.environment
  iam_instance_profile   = "devops_role"
  instance_type          = "t3.small"
  name                   = "${var.name}-${var.environment}"
  subnet_id              = [module.vpc_id.subnet_pri_1a_id,module.vpc_id.subnet_pri_1b_id]
  tags                   = var.tags
  user_data              = "user_data.sh"
  vpc_security_group_ids = [module.sg.sg_id]
  key_name               = "mykey"
  #  kms_key_id             = module.kms.key_id
}
```
subnet_id should be either of subnet-abcd123; or module.vpc_id.subnet_id.