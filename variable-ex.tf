variable "webserver_ami" {
    type = string
    default = "ami-abc123"
}

resource "aws_instance" "web" {
    ami - var.webserver_ami
}