

resource "aws_instance" "ec2instance1" {
   ami = var.image
   instance_type = var.size[var.env]

}

