# Expose outputs from nested rke module
# This allows output to be available in root module

output "rke_state"{
    value = module.rke-template.rke_state
}

output "kube_admin"{
    value = module.rke-template.kube_admin
}
