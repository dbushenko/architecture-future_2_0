module "vm" {
  source = "../../modules/vm"

  vm_name             = var.vm_name
  vm_cores            = var.vm_cores
  vm_memory           = var.vm_memory
  disk_name           = var.disk_name
  disk_size           = var.disk_size
  network_name        = var.network_name
  subnet_name         = var.subnet_name
  cidr_block          = var.cidr_block
  security_group_name = var.security_group_name
  ssh_user            = var.ssh_user
  ssh_public_key      = var.ssh_public_key
}