variable "image_id" {
  type  = string # optional
  default = "ami-090252cbe067a9e58"
  description = "RHEL-9 AMI ID" #optional

}

variable "instance_type" {
  type    = string
  default = "t3.micro"

}
variable "tags" {
  default = {
    project     = "expense"
    Environment = "Dev"
    Module      = "DB"
    Name        = "DB"

  }
}

variable "sg_name" {
  default = "allow_ssh"
}

variable "sg_descrition" {
  default = "allow port 22"
}

variable "ssh_port" {
  default = 22

}
variable "protocol" {
  default = "tcp"
}

variable "allowed_cidr" {
  type    = list(any)
  default = ["0.0.0.0/0"]


}