variable "vmware_api_url" {
  description = "URL de l'API VMware Workstation"
  default     = "http://localhost:8697/api"
}

variable "vmware_username" {
  description = "Nom d'utilisateur VMware"
  type        = string
}

variable "vmware_password" {
  description = "Mot de passe VMware"
  type        = string
  sensitive   = true
}

variable "template_id" {
  description = "ID de la VM template Ubuntu source"
  type        = string
}

variable "vm_name" {
  description = "Nom de la VM"
  default     = "ubuntu-vm"
}

variable "cpu_count" {
  description = "Nombre de processeurs"
  default     = 2
}

variable "memory_mb" {
  description = "Mémoire RAM en MB"
  default     = 2048
}

variable "vm_path" {
    description = "chemin vers le fichier VMX"
    type = string
  
}