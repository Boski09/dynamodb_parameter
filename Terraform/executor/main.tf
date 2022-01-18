data "aws_region" "aws-region" {}
data "aws_caller_identity" "current" {}

####################################
###       DynamoDB               ###
####################################
module "dynamodb" {
  source                = "../modules/dynamodb"
  /* project               = var.project */
  /* env                   = var.env */
  /* region                = data.aws_region.aws-region.name */
  dynamodb_table_name   = "Orders"
  dynamo_billing_mode   = "PROVISIONED"
  dynamo_write_capacity = "5"
  dynamo_read_capacity  = "5"
  hash_key              = "id"
  hash_key_type         = "N"
  range_key             = "name"
  range_key_type        = "S"
  tags                  = var.tags
}

####################################
###       SSM Parameters         ###
####################################
module "ssm_param_01" {
  source          = "../modules/ssm_param"
  ssm_param_name  = "/CP/${var.env}/DBConfig/ConnectionString/Database"
  ssm_param_type  = "SecureString"
  ssm_param_value = var.ssm_param_value_01 != "" ? var.ssm_param_value_01 : "demmy_value"
  tags            = var.tags
}
module "ssm_param_02" {
  source          = "../modules/ssm_param"
  ssm_param_name  = "/CP/${var.env}/DBConfig/ConnectionString/Password"
  ssm_param_type  = "SecureString"
  ssm_param_value = var.ssm_param_value_02 != "" ? var.ssm_param_value_02 : "demmy_value"
  tags            = var.tags
}
module "ssm_param_03" {
  source          = "../modules/ssm_param"
  ssm_param_name  = "/CP/${var.env}/DBConfig/ConnectionString/Server"
  ssm_param_type  = "SecureString"
  ssm_param_value = var.ssm_param_value_03 != "" ? var.ssm_param_value_03 : "demmy_value"
  tags            = var.tags
}
module "ssm_param_04" {
  source          = "../modules/ssm_param"
  ssm_param_name  = "/CP/${var.env}/DBConfig/ConnectionString/UserId"
  ssm_param_type  = "SecureString"
  ssm_param_value = var.ssm_param_value_04 != "" ? var.ssm_param_value_04 : "demmy_value"
  tags            = var.tags
}