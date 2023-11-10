# VPC CIDR Block
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "VPC_cidr block"
  type        = string
}

########
# WEB
########
# Web Tier CIDR Block 1
variable "public-web-subnet-1-cidr" {
  default     = "10.0.1.0/24"
  description = "public_web_subnet1"
  type        = string
}

# Web Tier CIDR Block 2
variable "public-web-subnet-2-cidr" {
  default     = "10.0.2.0/24"
  description = "public_web_subnet2"
  type        = string
}

########
# APP
########
# App Tier CIDR Block 1
variable "private-app-subnet-1-cidr" {
  default     = "10.0.3.0/24"
  description = "private_app_subnet1"
  type        = string
}

# App Tier CIDR Block 2
variable "private-app-subnet-2-cidr" {
  default     = "10.0.4.0/24"
  description = "private_app_subnet2"
  type        = string
}

########
#  DB
########
# DB Tier CIDR Block 1
variable "private-db-subnet-1-cidr" {
  default     = "10.0.5.0/24"
  description = "private_db_subnet1"
  type        = string
}

# DB Tier CIDR Block 2
variable "private-db-subnet-2-cidr" {
  default     = "10.0.6.0/24"
  description = "private_db_subnet2"
  type        = string
}

# APP Tier Security Group
variable "ssh-locate" {
  default     = "0.0.0.0/0"
  description = "Database Instance Type"
  type        = string
}

# DB Instance
variable "database-instance-class" {
  default     = "db.t2.micro"
  description = "Database Instance Type"
  type        = string
}

# Multi AZ
variable "multi-az-deployment" {
  default     = true
  description = "Create a standby DB instance"
  type        = bool
}