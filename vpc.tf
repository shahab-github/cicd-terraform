# create a vpc
resource "aws_vpc" "myvpc" {
    cidr_block = "192.168.0.0/16"

    tags = {
        Name = "myvpc"
    }
}