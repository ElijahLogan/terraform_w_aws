#data pulled from aws or another terraform config
#query aws for ami's ownerd by self with tag name and deploy to true 
data "aws_ami" "webserver_ami" {
    most_recent = true
    owners = ["self"]
    tags = {
        Name = "webserver"
        Deploy = "true"
    }
}

resource "aws_instance" "web"{
    ami = data.aws_ami.webserver.ami.id
}