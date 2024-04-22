terraform {
  required_providers {
    torque = {
      source = "QualiTorque/torque"
    }
  }
}

provider "torque" {}


resource "torque_introspection_resource" "example" {
  for_each = var.introspection_data
  display_name       = each.key
  image              = each.value.resource_image
  introspection_data = each.value.data
 
}
