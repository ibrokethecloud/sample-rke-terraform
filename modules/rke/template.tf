## Module to render template file ##
resource "local_file" "rke_configuration" {
  filename = "${path.module}/rke-rendered.yml"
  content = templatefile("${path.module}/rke-config.tmpl", { ip_addrs = var.internal_ip_address })
}

## Boot up cluster ##
resource "null_resource" "rke_bootup" {
  depends_on = [
    local_file.rke_configuration
  ]

  provisioner "local-exec" {
      command = "rke up"
      environment = {
        RKE_CONFIG = "${path.module}/rke-rendered.yml"
      }
  
  }
}
