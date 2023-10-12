data "aws_ssm_parameter" "master_username" {
  name = "${var.env}.rds.master_username"
}

data "aws_ssm_parameter" "master-password" {
  name = "${var.env}.rds.master-password"
}