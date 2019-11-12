output "vmware_kube_config" {
  value = module.vmware.kube_admin
}

output "vmware_rke_state" {
  value = module.vmware.rke_state
}
