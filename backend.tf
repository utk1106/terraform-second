terraform {
  backend "azurerm" {
    resource_group_name  = "Scbdemo-resources"
    storage_account_name = "scbtfstate"
    container_name       = "prod-tfstate"
    key                  = "prod.terraform.tfstate" #key is the file name we want for tfstate file 
  }
}

#Note: we cannot use variables in this file(backend.tf) so that is why we have to hardcode it