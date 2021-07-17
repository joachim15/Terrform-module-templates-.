
variable "terraform_instance" {
    type = list(string)
    default = ["PRD","DEV","STG"]
    }


variable "instance_type" {
  description = "instance type for ec2"
  default     =  "t2.micro"
}

variable "instance_count" {
  default = "3"
}




variable "manager_count" {
    default = "3"

}


variable "public_key" {
    default = "you public key start with =ssh-rsa "
}

variable "key_name" {
    default = "tf_ec2_key"
}


variable "key_pair_names" {
    description = "EC2 Key pair names"
    default = "3"
}
                                                        46,5          Bot

