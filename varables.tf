variable "image" {
  type = string
  default = "ami-0022f774911c1d690"
}
variable "env" {
  type = string
}

variable "size" {
    type = map 
    default = {
       dev  = "t2.micro"
       prod = "t2.large"
  
    }
  
}