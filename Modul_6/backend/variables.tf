variable "kortnavn" {
  description = "rav3n"
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{3,8}$", var.kortnavn))
    error_message = "kortnavn må være 3-8 tegn, kun små bokstaver og tall."
  }
}

variable "location" {
  type    = string
  default = "norwayeast"
}

variable "pipeline_principal_id" {
  description = "94544f22-0031-49d0-be53-d1a88e480090"
  type        = string
}

locals {
  tags = {
    student = var.kortnavn
    course  = "iac"
    keep    = "true"
  }
}
