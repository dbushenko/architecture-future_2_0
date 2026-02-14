data "kubectl_server_version" "current" {}

output "server_version" {
  value = data.kubectl_server_version.current.version
}