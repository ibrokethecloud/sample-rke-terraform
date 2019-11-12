module "vmware" {
    source = "./modules/vmware"
    enabled = true
    vsphere_user = var.vsphere_user
    vsphere_password = var.vsphere_password
    vsphere_url = var.vsphere_url
    vsphere_datacenter = var.vsphere_datacenter
    vsphere_datastore = var.vsphere_datastore
    local_pub_key = var.local_pub_key
    vsphere_resource_pool = var.vsphere_resource_pool
    vsphere_network = var.vsphere_network
    vm_image = var.vm_image
    node_count = var.node_count
    cpu_count = var.cpu_count
    memory = var.memory

}
