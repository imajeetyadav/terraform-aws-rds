variable "allocated_storage" {
  description = "The storage size in GB"
  type        = number
  default     = 20
}

variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window."
  type        = bool
  default     = true
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "backup_retention_period" {
  description = "The days to retain backups for."
  type        = number
  default     = 7
}

variable "backup_window" {
  description = "The daily time range (in UTC) during which automated backups are created if they are enabled. Example: 09:46-10:16. Must not overlap with maintenance_window"
  type        = string
  default     = "03:00-06:00"
}

variable "cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "database_name" {
  description = "The name of the database to create when the DB instance is created."
  type        = string
  default     = "demo"
}

variable "database_password" {
  description = "Password for the master DB user."
  type        = string
  default     = "insecurepassword"
}

variable "database_port" {
  description = "The port on which the DB accepts connections."
  type        = number
  default     = 5432
}

variable "database_username" {
  description = "The master username for the database."
  type        = string
  default     = "demo"
}

variable "delete_automated_backups" {
  description = "Specifies whether to remove automated backups immediately after the DB instance is deleted."
  type        = bool
  default     = true
}

variable "deletion_protection" {
  description = "If the DB instance should have deletion protection enabled."
  type        = bool
  default     = false
}

variable "enabled_cloudwatch_logs_exports" {
  description = "Set of log types to enable for exporting to CloudWatch logs"
  type        = list(string)
  default     = ["postgresql", "upgrade"]
}

variable "engine" {
  description = "The Database engine"
  type        = string
  default     = "postgres"
}

variable "engine_version" {
  description = "The Database version"
  type        = number
  default     = 14.4
}

variable "family" {
  description = "The Database family"
  type        = string
  default     = "postgres14"
}

variable "instance_class" {
  description = "The instance type"
  type        = string
  default     = "db.t3.micro"
}

variable "maintenance_window" {
  description = "The instance maintenance window."
  type        = string
  default     = "Sat:00:00-Sat:03:00"
}

variable "max_allocated_storage" {
  description = "This argument represents the initial storage allocation and differences from the configuration will be ignored automatically when Storage Autoscaling occurs"
  type        = number
  default     = 100
}

variable "multi_az" {
  description = "Multi-az allowed"
  type        = bool
  default     = false
}

variable "name" {
  description = "the name of your stack"
  type        = string
  default     = "rds-example"
}

variable "performance_insights_enabled" {
  description = "Specifies whether Performance Insights are enabled. Defaults to false."
  type        = bool
  default     = true
}

variable "performance_insights_retention_period" {
  description = "Amount of time in days to retain Performance Insights data."
  type        = number
  default     = 31
}

variable "private_subnets" {
  description = "List of private subnets"
  type        = list(string)
  default     = ["10.0.16.0/20", "10.0.48.0/20"]
}

variable "public_subnets" {
  description = "List of public subnets"
  type        = list(string)
  default     = ["10.0.0.0/20", "10.0.32.0/20"]
}

variable "region" {
  description = "the AWS region in which resources are created, you must set the availability_zones variable as well if you define this value to something other than the default"
  type        = string
  default     = "ap-south-1"
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted."
  type        = bool
  default     = true
}

variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted."
  type        = bool
  default     = true
}
