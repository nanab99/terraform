variable "instance_names" {

  type = map
  default = {
    db       = "t3.small"
    backend  = "t3.micro"
    frontend = "t3.micro"


  }
}

variable "common_tags" {
  type = map
  default = {
    project     = "expense"
    Environment = "Dev"
    terraform   = true

  }
}

#r53 variables

variable "zone_id" {
  default = "Z0933148D0SIJQAW6HXA"



}

variable "domain_name" {
  default = "bnsdevops.online"

}