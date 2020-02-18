variable "subnet_ids" {
  type    = list(string)
  default = ["subnet-0554e7fcce71e4a41", "subnet-072725ac1e98e80da", "subnet-08acede2e4c5e0fb3", "subnet-0bde161adafc24cb7"]
}

locals {
  service_name = "forum"
  owner        = "Community Team"
}
