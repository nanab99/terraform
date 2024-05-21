resource "aws_instance" "db" {
  
  ami  = var.image_id
  
  instance_type = var.instance_type
  #left side things are called as arguments , right side are values

  tags = var.tags
}

