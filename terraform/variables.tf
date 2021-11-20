# https://www.terraform.io/docs/language/values/variables.html

variable "region" {
  type = string
  default = "West Europe"
}

# No default means a variable is *required* either through tfvars file, EnvVar, CLI etc...
variable "app-name" {
  type = string

  # Thanks to azures name restrictions
  validation {
    condition     = length(var.app-name) <= 19 
    error_message = "App name can't exceed 19 characters."
  }

  validation {
    condition     = can(regex("[a-z]", var.app-name))
    error_message = "App name must be lowercase."
  }
}

variable "macguffin" {
  type = bool
  description = "This is just a random variable to show a different type and these nice descriptions"
  default = false
}