variable "create" {
  description = "(Optional) Whether to create this resource or not"
  default     = true
}

variable "name_prefix" {
  description = "(Required) The name of the table, this needs to be unique within a region"
  type        = "string"
}

variable "hash_key" {
  description = "(Required) The attribute to use as the hash key (the attribute must also be defined as an attribute record"
  type        = "string"
}

variable "write_capacity" {
  description = "(Required) The number of write units for this table"
  type        = "string"
}

variable "read_capacity" {
  description = "(Required) The number of read units for this table"
  type        = "string"
}

variable "attribute" {
  description = "(Required) Define an attribute"
  type        = "list"
}

variable "server_side_encryption" {
  description = "(Optional) Encrypt at rest options"
  type        = "list"
  default     = []
}

variable "point_in_time_recovery" {
  description = "(Optional) Point-in-time recovery options"
  type        = "list"
  default     = []
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the table"
  type        = "map"
  default     = {}
}
