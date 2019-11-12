# Extra config to try and render rke-config #

output "rke_template" {
  value = templatefile( "${path.module}/rke-config.tmpl", { ip_addrs = var.internal_ip_address })
}

output "kube_admin" {
  value = data.local_file.kube_admin.content
}

output "rke_state" {
  value = data.local_file.rke_state.content
}
