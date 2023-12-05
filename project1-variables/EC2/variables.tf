variable "ami" {
  description = "AMI"
  type = string #This means anything in double quotes
  default = "ami-0e8a34246278c21e4"
}

variable "instancetype" {
  default = "t2.micro"
}

variable "instanceregion" {
  default = "us-east-1a"
}

variable "versionregion" {
 default = "us-east-1"
}

variable "profile" {
  default = "default"
}

variable "name" {
  default = "HelloWorld-Dev"
}