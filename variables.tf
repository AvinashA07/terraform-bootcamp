variable "user_uuid" {
  description = "A UUID for the user"
  type        = string

  validation {
    condition     = can(regex("^([a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[1-5][a-fA-F0-9]{3}-[89aAbB][a-fA-F0-9]{3}-[a-fA-F0-9]{12})$", var.user_uuid))
    error_message = "The user_uuid must be a valid UUID (version 1-5). Example: 123e4567-e89b-12d3-a456-426614174000"
  }
}
