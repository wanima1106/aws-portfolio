# 1. AWSを使うための準備
provider "aws" {
  region = "ap-northeast-1"
}

# 2. ネットワークの基盤（VPC）を作成
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "portfolio-vpc"
  }
}

# 3. インターネットに繋がる入り口（Subnet）を作成
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "portfolio-public-subnet"
  }
}
