variable "introspection_data" {
  type = map(object({
    resource_image = string,
    data = map(string)
  }))
  default = {
              "svc1" = { resource_image = "", data = { size = "large1", mode = "party1", type ="frontend" } }
              "svc2" = { resource_image = "", data = { size = "large2", mode = "party2", type ="backend" } }
              "svc3" = { resource_image = "", data = { size = "large3", mode = "party3"} }
              "svc4" = { resource_image = "", data = { size = "large4", mode = "party3", type ="backend" } }
              "svc5" = { resource_image = "", data = { size = "large5", mode = "party3" } }
              "svc6" = { resource_image = "", data = { size = "large6", mode = "party3" } }
              "svc7" = { resource_image = "", data = { size = "large37", mode = "party3" } }
            }
}
