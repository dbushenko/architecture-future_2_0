output "vm_id" {
  description = "ID of the created VM"
  value       = yandex_compute_instance.vm-1.id
}

output "vm_name" {
  description = "Name of the created VM"
  value       = yandex_compute_instance.vm-1.name
}

output "external_ip" {
  description = "External IP address of the VM"
  value       = yandex_compute_instance.vm-1.network_interface.0.nat_ip_address
}

output "internal_ip" {
  description = "Internal IP address of the VM"
  value       = yandex_compute_instance.vm-1.network_interface.0.ip_address
}

output "disk_id" {
  description = "ID of the boot disk"
  value       = yandex_compute_disk.boot-disk-1.id
}

output "network_id" {
  description = "ID of the VPC network"
  value       = yandex_vpc_network.network-1.id
}

output "subnet_id" {
  description = "ID of the VPC subnet"
  value       = yandex_vpc_subnet.subnet-1.id
}