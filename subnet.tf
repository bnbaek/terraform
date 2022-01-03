resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.10.100.0/24"

  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "tf-subnet-public"
  }
}


resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.10.200.0/24"

  availability_zone = "ap-northeast-2b"

  tags = {
    Name = "tf-subnet-private"
  }
}
