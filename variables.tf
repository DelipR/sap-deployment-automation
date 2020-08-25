variable "assign_public_ip" {
  type           = bool
  description    = "Whether or not to assign a public IP to instance."
  default        = false
}

variable "machine_type" {
  type           = string
  description    = "Type of machine."
  default        = "n1-standard-2"
}

variable "instance_name" {
  type           = string
  description    = "Name of instance."
}

variable "project_id" {
  type           = string
  description    = "ID of project where instance is located."
}

variable "region" {
  type           = string
  description    = "Region where instance is located."
  default        = "us-central1"
}

variable "subnetwork" {
  type           = string
  description    = "Subnetwork of instance's network interface."
}

variable "subnetwork_project_id" {
  type           = string
  description    = "Project ID where instance subnetwork is located."
  default        = ""
}

variable "service_account" {
  type           = object({
    email        = string
    scopes       = list(string)
  })
  description    = "Service account assigned to instance."
  default        = {
    email        = ""
    scopes       = ["cloud-platform"]
  }
}

variable "source_image_family" {
  type           = string
  description    = "Family of disk source image."
  default        = "sap-awx"
}

variable "source_image_project" {
  type           = string
  description    = "Project of disk source image."
  default        = "albatross-duncanl-sandbox-2"
}

variable "tags" {
  type           = list(string)
  description    = "List of network tags to assign to instance."
  default        = []
}
