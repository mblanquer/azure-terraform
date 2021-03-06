output "linux_vms" {
  description = "Map output of the Linxy Virtual Machines"
  value       = { for k, b in azurerm_virtual_machine.linux_vms : k => b }
}

output "windows_vms" {
  description = "Map output of the Windows Virtual Machines"
  value       = { for k, b in azurerm_virtual_machine.windows_vms : k => b }
}

output "windows_vms_ids" {
  value = values(azurerm_virtual_machine.windows_vms)[*].id
}

output "windows_vms_names" {
  value = values(azurerm_virtual_machine.windows_vms)[*].name
}