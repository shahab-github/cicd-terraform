# create a vpc
resource "aws_vpc" "myvpc" {
    cidr_block = "192.168.0.0/16"

    tags = {
        Name = "myvpc"
    }
}

resource "aws_subnet" "pubsub01" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "us-east-1a"
}

resource "aws_subnet" "pubsub02" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = "192.168.2.0/24"
    availability_zone = "us-east-1a"
}

