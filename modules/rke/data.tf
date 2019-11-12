data "local_file" "kube_admin" {
  filename = "${path.module}/kube_config_rke-rendered.yml"
  depends_on = [
    null_resource.rke_bootup
  ]
}


data "local_file" "rke_state" {
  filename = "${path.module}/rke-rendered.rkestate"
  depends_on = [
    null_resource.rke_bootup
  ]
}