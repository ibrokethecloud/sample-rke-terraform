data "vsphere_datacenter" "dc" {
  name = var.vsphere_datacenter
}

data "local_file" "pub_ssh_key" {
  filename = var.local_pub_key
}

data "vsphere_datastore" "datastore" {
  name          = var.vsphere_datastore
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_resource_pool" "pool" {
  name          = var.vsphere_resource_pool
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = var.vsphere_network
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template" {
  name          = var.vm_image
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "template_file" "rke-cloud-init" {
  template = file("cloud-init-rke-node.tpl")
  vars = {
    ssh_key = data.local_file.pub_ssh_key.content
  }
}