module "vmware" {
    source = "${path.module}/modules/vmware"
    enabled = true
    vsphere_user = var.vsphere_user
    vsphere_password = var.vsphere_password
    vsphere_url = var.vsphere_url
    vsphere_datacenter = var.vsphere_datacenter
    local_pub_key = var.local_pub_key
    vsphere_resource_pool = var.vsphere_resource_pool
    vsphere_network = var.vsphere_network
    vm_image = var.vsphere_image
    count = 3
    cpu_count = var.cpu_count
    memory = var.memory

}