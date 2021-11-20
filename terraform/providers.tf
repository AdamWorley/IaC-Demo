# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "random_id" "suffix" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    ami_id = "${var.app-name}"
  }

  byte_length = 1
}

# Other providers
# # AWS
# provider "aws" {
#   region = "us-east-1"
# }


# provider "github" {}
# github would be a good example of a provider that resources can be 'included' from
# You could get teams, users, repos etc...