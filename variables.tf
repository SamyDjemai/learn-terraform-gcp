variable "project" {}

variable "credentials_file" {}

variable "region" {
  default = "europe-west1"
}

variable "zone" {
  default = "europe-west1-b"
}

variable "instance_names" {
  type = list(string)
}
