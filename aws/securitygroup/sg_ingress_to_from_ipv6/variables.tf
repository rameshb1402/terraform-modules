variable "protocol" {
  description = "The name of the protocol"
}
variable "ipv6_cidr_blocks" {
  description = "The name of the cidr_blocks"
}
variable "security_group_id" {
  description = "The name of the security_group_id"
}
variable "description" {
  description = "The name of the description"
}
variable "tags" {
  description = "name of environment"
}
variable "from_port" {
  description = "these are the from_port are allowing"
  type = list(number)
}
variable "to_port" {
  description = "these are the to_port are allowing"
  type = list(number)
}