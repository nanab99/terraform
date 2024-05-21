variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]

  
}

variable "image_id" {
  type  = string # optional
  default = "ami-090252cbe067a9e58"
  description = "RHEL-9 AMI ID" #optional

}

variable "instance_type" {
  type    = string
  default = "t3.micro"

}
variable "common_tags" {
  default = {
    project     = "expense"
    Environment = "Dev"
    terraform = true

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


}#r53 variables

variable "zone_id" {
    default = "Z0933148D0SIJQAW6HXA"


  
}

variable "domain_name" {
    default = "bnsdevops.online"
  
}