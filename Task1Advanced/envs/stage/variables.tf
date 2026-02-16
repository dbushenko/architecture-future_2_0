# Variables for stage environment
# These variables are loaded from terraform.tfvars file

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "vm_cores" {
  description = "Number of CPU cores for the VM"
  type        = number
}

variable "vm_memory" {
  description = "Amount of memory for the VM in GB"
  type        = number
}

variable "disk_name" {
  description = "Name of the boot disk"
  type        = string
}

variable "disk_size" {
  description = "Size of the disk in GB"
  type        = number
}

variable "network_name" {
  description = "Name of the VPC network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the VPC subnet"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
}

variable "ssh_user" {
  description = "Username for SSH access"
  type        = string
}

variable "ssh_public_key" {
  description = "Public SSH key for user access"
  type        = string
}