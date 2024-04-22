resource null_resource password {
    provisioner "local-exec" {
        command = "pip3 install -r requirements.txt"
    }

    provisioner "local-exec" {
        command = "python3 main.py"
    }
}

data local_file password_output {
    depends_on = [ null_resource.password ]
    filename = "${path.module}/password_tmp"
}