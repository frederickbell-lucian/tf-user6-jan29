variable "instance_type" {
    type = string
    default = "t3.nano"
  validation {
condition     = contains(["t3.nano", "t3.micro"], var.instance_type)
error_message = "Only t3.nano or t3.micro are allowed."
  }
}

variable "ami_id" {
    type = string
    default = "ami-0993d3759749c153c"
  
}

variable "tag_name" {
    default = "user06-vm01_"
  
}

variable "tag_owner" {
    default = "user06"
}
  
variable "num_of_vm" {
    type = number
    default = "2"
  
}