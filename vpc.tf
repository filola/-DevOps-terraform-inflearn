resource "aws_vpc" "terraform-chs" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "terraform-chs"
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id = aws_vpc.terraform-chs.id
  cidr_block = "10.0.0.0/24"

  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "terraform-chs-public-subnet1"
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id = aws_vpc.terraform-chs.id
  cidr_block = "10.0.16.0/24"

  availability_zone = "ap-northeast-2b"
  
  tags = {
    Name = "terraform-chs-public-subnet2"
  }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id = aws_vpc.terraform-chs.id
  cidr_block = "10.0.128.0/24"  

  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "terraform-chs-private-subnet1"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id = aws_vpc.terraform-chs.id
  cidr_block = "10.0.144.0/24"

  availability_zone = "ap-northeast-2b"

  tags = {
    Name = "terraform-chs-private-subnet2"
  }
}

resource "aws_internet_gateway" "igw-chs" {
  vpc_id = aws_vpc.terraform-chs.id

  tags = {
    "name" = "igw-chs"
  }
  
}