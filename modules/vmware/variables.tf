variable "vsphere_user" {}

variable "vsphere_password" {}

variable "vsphere_url" {}

variable "vsphere_datacenter" {}

variable "vsphere_datastore" {}

variable "local_pub_key" {}

variable "vsphere_resource_pool" {}

variable "vsphere_network" {}

variable "vm_image" {}

variable "node_count" {}

variable "enabled" {
    default = false
    type = bool
}

variable "cpu_count" {}

variable "memory" {}