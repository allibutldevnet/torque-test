output "password" {
    value = jsondecode(data.local_file.password_output.content).password
}

output "username" {
    value = jsondecode(data.local_file.password_output.content).username
}