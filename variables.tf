variable "vsphere_user" {
    default = null
}

variable "vsphere_password" {
    default = null
}

variable "vsphere_url" {
    default = null
}

variable "vsphere_datacenter" {
    default = null
}

variable "vsphere_datastore" {
    default = null
}

variable "local_pub_key" {
    default = null
}

variable "vsphere_resource_pool" {
    default = null
}

variable "vsphere_network" {
    default = null
}

variable "vm_image" {
    default = null
}

variable "cpu_count" {
    default = null
}

variable "memory" {
    default = null
}

variable "enabled" {
    type = bool
    default  = false
}

variable "node_count" {
    default = 3
}

