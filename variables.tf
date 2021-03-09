variable "instance_ssh_pub_key_path" {
  type = string
  description = "The path to SSH public key to instances access"
}

variable "path_to_private_ssh_key" {
  type = string
  description = "The path to SSH private key to instances access"
}

variable "path_to_gcp_credentials" {
  type = string
  description = "The path to GCP credential file with the JSON format"
}

variable "gcp_zone" {
  type = string
  description = "The Google Computer Engine zone"
}

variable "gcp_region" {
  type = string
  description = "The Google Computer Engine region"
}

variable "gcp_project" {
  type = string
  description = "The GCP Project"
}

variable "gcp_instance_name" {
  type = string
  description = "The GCE instance name"
}

variable "gcp_machine_type" {
  type = string
  description = "The instances configuration"
}

variable "gcp_os_image" {
  type = string
  description = "The GCE OS image"
}

variable "gcp_instance_user" {
  type = string
  description = "The instance user name"
}

variable "tags" {
  type = list(string)
  description = "The tags to mark resources"
}

variable "gcp_network" {
  type = string
  description = "The GCE network name"
  default = "default"
}

variable "gcp_firewall_vpn_rule_name" {
  type = string
  description = "The GCP VPC network firewall rule name for vpn"
}

variable "gcp_firewall_http_rule_name" {
  type = string
  description = "The GCP VPC network firewall rule name for http"
}

variable "firewall_vpn_protocol" {
  type = string
  description = "The firewall rule protocol for vpn"
  default = "udp"
}

variable "firewall_http_protocol" {
  type = string
  description = "The firewall rule protocol for vpn"
  default = "tcp"
}

variable "firewall_vpn_ports" {
  type = list(string)
  description = "The list of ports to access"
  default = ["1194"]
}

variable "firewall_http_ports" {
  type = list(string)
  description = "The list of ports to access"
  default = ["80"]
}

variable "firewall_source_range" {
  type = list(string)
  description = "The range of source CIDR. Default value allows connections from all ips"
  default = ["0.0.0.0/0"]
}

variable "firewall_rule_source_tags" {
  type = list(string)
  description = "The list of firewall rule source tags"
  default = ["proxy"]
}

variable "inv_permissions" {
  type = string
  description = "The inventory file permissions"
  default = "0644"
}

variable "script_permissions" {
  type = string
  description = "The script file permissions"
  default = "0744"
}

variable "templates_path" {
  type = string
  description = "The path to templates"
  default = "templates"
}

variable "inventory_tpl" {
  type = string
  description = "The inventory template file name"
  default = "inventory.tpl"
}

variable "get_ovpn_user_tpl" {
  type = string
  description = "The bash-script 'get_ovpn_user.sh' template file name"
  default = "get_ovpn_user.tpl"
}

variable "output_inv_file_name" {
  type = string
  description = "The output inventory file name"
  default = "inventory.yml"
}

variable "output_script_file_name" {
  type = string
  description = "The output script file name"
  default = "get_ovpn_user.sh"
}

variable "path_to_ansible_dir" {
  type = string
  description = "The path to ansible dir"
  default = "ansible"
}

variable "path_to_scripts_dir" {
  type = string
  description = "The path to scripts dir"
  default = "scripts"
}

variable "time_sleep" {
  type = string
  description = "The time to seep before provisioning"
  default = "30s"
}

