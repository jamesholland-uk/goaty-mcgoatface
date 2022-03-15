variable "profile" {
    type        = string
    default     = "default"
}

variable "region" {
    type        = string
    default     = "eu-west-2"
}

variable "ami" {
    type        = string
    default     = ""
}

variable "instance_type" {
    type        = string
    default     = "m5.xlarge"
}

variable "subnet_id" {
    type        = string
    default     = null
}