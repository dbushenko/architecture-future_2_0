data "kubernetes_nodes" "nodes" {}

output "cluster_info" {
  description = "Information about the minikube cluster"
  value = {
    server_version = data.kubectl_server_version.current.version
    node_count     = length(data.kubernetes_nodes.nodes.nodes)
  }
}

output "kubeconfig_path" {
  description = "Path to kubeconfig file"
  value       = "~/.kube/config"
}