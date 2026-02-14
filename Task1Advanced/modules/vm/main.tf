terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  zone = var.zone
}

resource "yandex_compute_disk" "boot-disk-1" {
  name     = var.disk_name
  type     = var.disk_type
  zone     = var.zone
  size     = var.disk_size
  image_id = var.image_id
}

resource "yandex_compute_instance" "vm-1" {
  name = var.vm_name

  resources {
    cores  = var.vm_cores
    memory = var.vm_memory
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk-1.id
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
    security_group_ids = [yandex_vpc_security_group.security-group-1.id]
  }

  metadata = {
    user-data = "#cloud-config\nusers:\n  - name: ${var.ssh_user}\n    groups: [sudo]\n    shell: /bin/bash\n    sudo: ['ALL=(ALL) NOPASSWD:ALL']\n    ssh-authorized-keys:\n      - ${var.ssh_public_key}\nruncmd:\n  - systemctl restart ssh\n  - usermod -aG sudo ${var.ssh_user}"
  }
}

resource "yandex_vpc_security_group" "security-group-1" {
  name       = var.security_group_name
  network_id = yandex_vpc_network.network-1.id
  description = "Security group for VM SSH access"

  ingress {
    protocol       = "TCP"
    description    = "SSH"
    v4_cidr_blocks = ["0.0.0.0/0"]
    port           = 22
  }

  egress {
    protocol       = "ANY"
    description    = "Allow all egress"
    v4_cidr_blocks = ["0.0.0.0/0"]
    from_port      = 1
    to_port        = 65535
  }
}

resource "yandex_vpc_network" "network-1" {
  name = var.network_name
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = var.subnet_name
  zone           = var.zone
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = [var.cidr_block]
}
