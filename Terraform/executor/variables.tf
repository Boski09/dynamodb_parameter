variable "env" {
  type = string
  default = "dev"
  description = "Environment name"
}

#################################
#        SSM param vars         #
#################################



variable "ssm_param_value_01"{
    type = string
    description = "SSM param value 01. Leave empty if not applicable"
}
variable "ssm_param_value_02"{
    type = string
    description = "SSM param value 02. Leave empty if not applicable"
}

variable "ssm_param_value_03"{
    type = string
    description = "SSM param value 03. Leave empty if not applicable"
}

variable "ssm_param_value_04"{
    type = string
    description = "SSM param value 04. Leave empty if not applicable"
}



variable "tags"{
  type = map(string)
  default = {
  }
}