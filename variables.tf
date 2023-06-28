#  provider 
variable "my-default-region" {
  description = "this my default region where to provision my resources"
  type = string
  default = "us-east-1"
}

# # aws region access key
# variable "my-access-key" {
#   description = "this is my aws region access key"
#   type        = string
#   default     = "AKIA4K6L3A6B7K7Z4OAL"
# }

# # aws region secret key
# variable "my-secret-key" {
#   description = "this is my aws region secret key"
#   type        = string
#   default     = "1u+1mbx8NG8o69f6Ax59fuUKOTLuOPIKCGMNGMT5"
# }