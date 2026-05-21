#Outputs Azure
output "public_ip" {
description = "Public IP address of the VM"
value       = azurerm_public_ip.pip.ip_address
}

output "ssh_command" {
description = "SSH command to connect to the VM"
value       = "ssh ${var.admin_username}@${azurerm_public_ip.pip.ip_address}"
}

output "http_url" {
description = "URL to test Nginx once installed"
value       = "http://${azurerm_public_ip.pip.ip_address}"
}


