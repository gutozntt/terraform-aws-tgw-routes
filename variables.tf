variable "vpc_id" {
  description = "The VPC ID where the routes will be created."
}
variable "destination_cidr_blocks" {
  type        = list(any)
  description = "The list of CIDR Blocks that you want to point to TGW from the vpc_id."
}
variable "tgw_id" {
  description = "The Transit Gateway ID."
}
