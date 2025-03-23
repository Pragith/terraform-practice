# --- instance/main.tf --- #

resource "aws_instance" "app_server" {
  ami = data.aws_ssm_parameter.ec2-ami.value
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  count = var.instance_count
	tags = {
		Name = "app-server"
	}
}

data "aws_ssm_parameter" "ec2-ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}