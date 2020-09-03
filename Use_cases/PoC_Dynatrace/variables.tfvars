location = "francecentral"
tags = {
    "env" = "dev"
}
# linux_vms = {
#       vm1 = {
#         suffix_name          = "vm"           
#         id                   = "1"            
#         storage_data_disks   = []             
#         Id_Subnet            = "0"
#         #snet_key            = "demo2"        
#         # zones                = ["1"]        
#         nsg_key              = null
#         static_ip            = "10.0.0.14"
#         enable_accelerated_networking = false 
#         enable_ip_forwarding          = false 
#         vm_size              = "Standard_DS1_v2"
#         managed_disk_type    = "Premium_LRS"    
#         # backup_policy_name            = "policy-backup-vm" 
#       }
#   }

windows_vms = {
      vm1 = {
        suffix_name          = "vm"          
        id                   = "1"           
        storage_data_disks   = [
          {
            id = 1
            caching = "ReadOnly"
            create_option = "Empty"
            disk_size_gb = 32
            lun = 0
            write_accelerator_enabled = false
            managed_disk_type = "Premium_LRS"
          },
          {
            id = 2
            caching = "None"
            create_option = "Empty"
            disk_size_gb = 32
            lun = 1
            write_accelerator_enabled = false
            managed_disk_type = "Premium_LRS"
          }
        ] 
        Id_Subnet            = "0"
        nsg_key              = null
        static_ip            = "10.0.0.14"
        enable_accelerated_networking = false
        enable_ip_forwarding          = false
        vm_size              = "Standard_DS2_v2"
        managed_disk_type    = "Premium_LRS"
        public_ip_key = "myip"
      }
  }
  bastion_subnetAddressSpace = ["10.0.1.0/26"]
  nsg_security_rules = {
        RDP = {
          priority                   = 100
          direction                  = "Inbound"
          access                     = "Allow"
          protocol                   = "Tcp"
          source_port_range          = "*"
          destination_port_range     = "3389"
          source_address_prefixes      = ["10.0.0.1", "10.0.0.2"]
          destination_address_prefix = "*"
        }
        DenyAll = {
          priority                   = 4096
          direction                  = "Inbound"
          access                     = "Deny"
          protocol                   = "Tcp"
          source_port_range          = "*"
          destination_port_range     = "*"
          source_address_prefix      = "*"
          destination_address_prefix = "*"
        }
  }