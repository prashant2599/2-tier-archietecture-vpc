variable "vpc" {
  type = map
  default = {
    azone1 = "ap-south-1a"
    azone2 = "ap-south-1b"
    region = "ap-south-1"
  }
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}


variable "public_subnet" {
    type = map 
    default = {
        pub1 = "10.0.1.0/24"
        pub2 = "10.0.2.0/24"
    }
}
# variable "public_subnet1_cidr_block" {
#   default = "10.0.1.0/24"
# }

# variable "public_subnet2_cidr_block" {
#   default = "10.0.2.0/24"
# }

variable "private_subnet3_cidr_block" {
    default = "10.0.3.0/24" 
}

variable "private_subnet4_cidr_block" {
    default = "10.0.4.0/24" 
}