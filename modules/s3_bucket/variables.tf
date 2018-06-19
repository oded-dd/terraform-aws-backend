variable "name_prefix" {
  description = "(Required) backend key_prefix"
  type        = "string"
}

variable "acl" {
  description = "(Optional) The canned ACL to apply"
  type        = "string"
  default     = "private"
}

variable "force_destroy" {
  description = "(Optional) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error"
  type        = "string"
  default     = false
}

variable "versioning" {
  description = "(Optional) A state of versioning"
  type        = "list"
  default     = []
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

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the bucket"
  type        = "map"
  default     = {}
}

variable "create_backend_policy" {
  description = "(Optional) Whether to create this resource or not"
  type        = "string"
  default     = false
}

variable "policy" {
  description = "(Optional) A valid bucket policy JSON document"
  type        = "string"
  default     = ""
}
  
variable "principal" {
  description = "(Optional) The Amazon Resource Name (ARN) specifying the role"
  type        = "string"
  default     = "*" 
}
