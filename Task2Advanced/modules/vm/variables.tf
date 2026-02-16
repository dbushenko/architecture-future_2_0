variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = "terraform-vm"
}

variable "vm_cores" {
  description = "Number of CPU cores for the VM"
  type        = number
  default     = 2
}

variable "vm_memory" {
  description = "Amount of memory for the VM in GB"
  type        = number
  default     = 2
}

variable "disk_name" {
  description = "Name of the boot disk"
  type        = string
  default     = "boot-disk"
}

variable "disk_type" {
  description = "Type of the disk"
  type        = string
  default     = "network-hdd"
}

variable "disk_size" {
  description = "Size of the disk in GB"
  type        = number
  default     = 20
}

variable "image_id" {
  description = "Image ID for the boot disk"
  type        = string
  default     = "fd84mnbiarffhtfrhnog"
}

variable "zone" {
  description = "Availability zone for resources"
  type        = string
  default     = "ru-central1-a"
}

variable "network_name" {
  description = "Name of the VPC network"
  type        = string
  default     = "network1"
}

variable "subnet_name" {
  description = "Name of the VPC subnet"
  type        = string
  default     = "subnet1"
}

variable "cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "192.168.10.0/24"
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "security-group1"
}

variable "ssh_user" {
  description = "Username for SSH access"
  type        = string
  default     = "dim"
}

variable "ssh_public_key" {
  description = "Public SSH key for user access"
  type        = string
  default     = ""
}