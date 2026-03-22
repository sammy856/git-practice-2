variable "resource_groups" {
  description = "Map of resource groups to create"
  type = map(object({
    location = string
  }))
}


variable "vnets" {
  description = "Map of VNets with their subnets"
  type = map(object({
    resource_group_name = string
    address_space       = list(string)
    location            = string

    subnets = list(object({
      name             = string
      address_prefixes = list(string)
    }))
  }))
}


# variable "linux_vms" {
  
# }

variable "windowsvm" {
  description = "Map of windows VMs"
  type = map(object({
    resource_group_name  = string
    virtual_network_name = string
    location             = string
    subnet_name          = string
    vm_size              = string
    admin_username       = string
    admin_password       = string
  }))
}

variable "nsgs" {
  
}

variable "nsgassoc" {
  
}