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

variable "gcp_firewall_rule_name" {
  type = string
  description = "The GCP VPC network firewall rule name"
}

variable "firewall_protocol" {
  type = string
  description = "The firewall rule protocol"
  default = "udp"
}

variable "firewall_ports" {
  type = list(string)
  description = "The list of ports to access"
  default = ["1194"]
}

variable "firewall_rule_source_tags" {
  type = list(string)
  description = "The list of firewall rule source tags"
  default = ["proxy"]
}


