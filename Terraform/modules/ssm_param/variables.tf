variable "ssm_param_name"{
    type = string
    description = "SSM param name"
}
variable "ssm_param_value"{
    type = string
    description = "SSM param value. Leave empty if not applicable"
}
variable "ssm_param_type" {
  type = string
  default = "SecureString"
  description = "SSM param type 'String, SecureString or StringList'"
}
variable "tags" {
  type        = map(string)
  description = "Tags to attach to resources"
}