provider "azurerm" {
  features {}
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.20.0"
    }
  }

# backend "local" {
#       path = "./terraform.tfstate"
#     }
  # backend "azurerm" {
    /*storage_account_name = "poctfshrd__application__tfsa"
    container_name       = "terraform"
    key                  = "terraform-network-__environment__.tfstate"
    access_key           = "__tf_storage_account_key__"*/

  # storage_account_name = "pocdynatracesa01"
  #   container_name       = "states"
  #   key                  = "terraform-dynatrace.tfstate"
  #   access_key           = "157VAwZ6NK95UIpePTz5QPKVGC+xt4TvR45rA6rsKtpu8jD5Ffb1BqJa3J8K5HbHSvW2Q7aD5lZUgWnkgGrXLQ=="
  # }
}