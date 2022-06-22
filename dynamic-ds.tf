data "aws_ami" "ubuntu" {
    #filter block to narrow down whats returned in a data source
    #allow you to get the most recent ubuntu
    most_recent = true
    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
    }
    filter{
        name = "virtualization-type"
        values = ["hvm"]
    }
    owners = ["099720109477"]
}


#General advice 

#Documentation is code
#more complex is usually less readable
#balance is key
#code to the level beyond what you need