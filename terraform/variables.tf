variable "project_name" {
  default = "roboshop"
}

variable "env" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project = "roboshop"
    Component = "catalogue"
    Environment = "DEV"
    Terraform = "true"
  }
}

variable "app_version" {
  # this is jsut to test variable is going from terraform to shell and then to ansible
  default = "1.10.0"
}
