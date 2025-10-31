variable "parent_id" {
  description = "The parent id of the resource, e.g. organizations/123456789, folders/123456789, or projects/project-id"
  type        = string

  validation {
    condition     = can(regex("^organizations/[0-9]+$", var.parent_id)) || can(regex("^folders/[0-9]+$", var.parent_id)) || can(regex("^projects/.+$", var.parent_id))
    error_message = "Parent ID must be in the format organizations/123456789, folders/123456789, or projects/project-id."
  }
}
