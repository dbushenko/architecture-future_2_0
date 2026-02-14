variable "minikube_driver" {
  description = "Driver to use for minikube"
  type        = string
  default     = "docker"
}

variable "minikube_memory" {
  description = "Memory to allocate to minikube VM"
  type        = number
  default     = 4096
}

variable "minikube_cpus" {
  description = "Number of CPUs to allocate to minikube VM"
  type        = number
  default     = 2
}