resource "aws_ssm_parameter" "ssm_param" {
  name        = var.ssm_param_name
  description = var.ssm_param_name
  type        = var.ssm_param_type
  value       = var.ssm_param_value

  tags = var.tags
}