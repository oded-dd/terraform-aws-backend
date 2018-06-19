variable "create_backend_policy" {
  description = "(Optional) Whether to create this resource or not"
  default     = false
}

variable "create_dynamodb_table" {
  description = "(Optional) Whether to create this resource or not"
  default     = true
}

variable "identifier" {
  description = "(Required) backend name identifier"
  type        = "string"
}

variable "acl" {
  description = "(Optional) The canned ACL to apply"
  type        = "string"
  default     = "private"
}

variable "policy" {
  description = "(Optional) A valid bucket policy JSON document"
  type        = "string"
  default     = ""
}

variable "force_destroy" {
  description = "(Optional) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error"
  type        = "string"
  default     = false
}

variable "versioning" {
  description = "(Optional) A state of versioning"
  type        = "list"
  default     = [
    {
      enabled = true
    }
  ]
}

variable "logging" {
  description = "(Optional) A settings of bucket logging"
  type        = "list"
  default     = []
}

variable "region" {
  description = "(Optional) If specified, the AWS region this bucket should reside in"
  type        = "string"
  default     = ""
}

variable "replication_configuration" {
  description = "(Optional) A configuration of replication configuration"
  type        = "list"
  default     = []
}

variable "server_side_encryption_configuration" {
  description = "(Optional) A configuration of server-side encryption configuration"
  type        = "list"
  default     = []
}

variable "hash_key" {
  description = "(Optional) The attribute to use as the hash key (the attribute must also be defined as an attribute record"
  type        = "string"
  default     = "LockID"
}

variable "write_capacity" {
  description = "(Optional) The number of write units for this table"
  type        = "string"
  default     = 1
}

variable "read_capacity" {
  description = "(Optional) The number of read units for this table"
  type        = "string"
  default     = 2
}

variable "attribute" {
  description = "(Optional) Define an attribute"
  type        = "list"
  default     = [
    {
      name = "LockID"
      type = "S"
    }
  ]
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

variable "principal" {
  description = "(Optional) The Amazon Resource Name (ARN) specifying the role"
  type        = "string"
  default     = "*"
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource"
  type        = "map"
  default     = {}
}

