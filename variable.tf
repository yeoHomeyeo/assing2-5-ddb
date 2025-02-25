variable "name_prefix" {
  description = "naming convention"
  type        = string
  default     = "chrisy-ass25"
}

variable "myregion_one" {
  description = "Region"
  type        = string
  default     = "us-east-1"
}

variable "env" {
  description = "The environment of the AWS infrastructure"
  type        = string
  default     = "dev"
}

variable "my_inst_type" {
  description = "The environment of the AWS infrastructure"
  type        = string
  default     = "t2.micro"
}

variable "part_key" {
  description = "partition key of database"
  type        = string
  default     = "ISBN"
}

variable "sort_key" {
  description = "Sort key of database"
  type        = string
  default     = "Genre"
}
