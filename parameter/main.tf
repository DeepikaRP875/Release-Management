provider "aws" {
  region = var.aws_region
}

# Parameter Store resources for Dev
resource "aws_ssm_parameter" "dev" {
  count = var.environment == "dev" ? 1 : 0
  
  name  = "/config/dev/param"
  type  = "String"
  value = "Dpka"
  
  tags = {
    Environment = "dev"
  }
}

# Parameter Store resources for UAT
resource "aws_ssm_parameter" "uat" {
  count = var.environment == "uat" ? 1 : 0
  
  name  = "/config/uat/parameters"
  type  = "String"
  value = "dpka"
  
  tags = {
    Environment = "uat"
  }
}