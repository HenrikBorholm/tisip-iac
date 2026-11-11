variable "student_id" {
  description = "Student-ID brukt i ressursnavn"
  type        = string
}

variable "project" {
  description = "Prosjektnavn med student-ID-prefiks"
  type        = string
}

variable "location" {
  description = "Azure-region for ressursene"
  type        = string
}

variable "resource_group_name" {
  description = "Navnet på ressursgruppen som nettverket skal bruke"
  type        = string
}