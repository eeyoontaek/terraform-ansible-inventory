variable "servers" {
  type = list(object({
    name = string
    ansible_ssh_host = string
    private_ip = string
  }))
  default = []
  description = "name + public IP + private IP"
}

variable "groups" {
    type = list(string)
    default = []
    description = "ansible groups names"
}

variable "hostname" {
  type = string
  default = "ec2-user"
}

variable "output" {
  type = string
  default = ""
}