variable "rg_name" {}
variable "pip_name" {}
variable "pip_location" {}
variable "pip_tags" {
  type = map
}
variable "pip_allocation_method" {
  default = "Dynamic"
}