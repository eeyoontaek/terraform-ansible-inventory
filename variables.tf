variable "servers" {
  type = list(object({
    name = string
    ansible_ssh_host = string
    private_ip = string
    private_dns = string
  }))
  default = []
  description = "name + public IP + private IP + private DNS"
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

variable "key_path" {
    type = string
    default = ""
}
variable "private_dns" {
    type = string
    default = ""
}