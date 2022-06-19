resource "aws_default_vpc" "default"{}

resource "aws_security_group" "prod_web"{
    name = "prod_web"
    description = "Allow standard htto and https ports inbound and everything outbound"
    
    ingress {
        from_port = 80 
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80 
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
#easy to delete
    tags = {
        "terraform":"true"
    }
}

resource "aws_instance" "prod_web"{
    ami =  "ami-0dcbf34e757d2a931"
    instance_type = "t2.nano"
    
    vpc_security_group_ids = [
    aws_security_group.prod_web.id
    ]
    
    tags = {
        "terraform":"true"
    }
}

