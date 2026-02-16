output "vm_id" {
  description = "ID of the created VM"
  value       = module.vm.vm_id
}

output "vm_name" {
  description = "Name of the created VM"
  value       = module.vm.vm_name
}

output "external_ip" {
  description = "External IP address of the VM"
  value       = module.vm.external_ip
}

output "internal_ip" {
  description = "Internal IP address of the VM"
  value       = module.vm.internal_ip
}

output "disk_id" {
  description = "ID of the boot disk"
  value       = module.vm.disk_id
}

output "network_id" {
  description = "ID of the VPC network"
  value       = module.vm.network_id
}

output "subnet_id" {
  description = "ID of the VPC subnet"
  value       = module.vm.subnet_id
}