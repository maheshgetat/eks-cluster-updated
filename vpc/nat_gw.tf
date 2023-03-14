resource "aws_vpc_endpoint" "eks" {
  vpc_id       = aws_vpc.custom_vpc.id
  service_name = "com.amazonaws.us-east-1.eks"
   vpc_endpoint_type = "Interface"
   subnet_ids = [aws_subnet.private_subnet[0].id,aws_subnet.private_subnet[1].id]
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]

  private_dns_enabled = true
}
resource "aws_vpc_endpoint" "ec2" {
  vpc_id       = aws_vpc.custom_vpc.id
  service_name = "com.amazonaws.us-east-1.ec2"
   vpc_endpoint_type = "Interface"
   subnet_ids = [aws_subnet.private_subnet[0].id,aws_subnet.private_subnet[1].id]
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]

  private_dns_enabled = true
}
resource "aws_vpc_endpoint" "ecr_api" {
  vpc_id       = aws_vpc.custom_vpc.id
  service_name = "com.amazonaws.us-east-1.ecr.api"
   vpc_endpoint_type = "Interface"
   subnet_ids = [aws_subnet.private_subnet[0].id,aws_subnet.private_subnet[1].id]
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]

  private_dns_enabled = true
}
resource "aws_vpc_endpoint" "ecr_dkr" {
  vpc_id       = aws_vpc.custom_vpc.id
  service_name = "com.amazonaws.us-east-1.ecr.dkr"
   vpc_endpoint_type = "Interface"
   subnet_ids = [aws_subnet.private_subnet[0].id,aws_subnet.private_subnet[1].id]
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]

  private_dns_enabled = true
}
 
resource "aws_vpc_endpoint" "sts" {
  vpc_id       = aws_vpc.custom_vpc.id
  service_name = "com.amazonaws.us-east-1.sts"
   vpc_endpoint_type = "Interface"
   subnet_ids = [aws_subnet.private_subnet[0].id,aws_subnet.private_subnet[1].id]
  security_group_ids = [
   aws_security_group.control_plane_sg.id,
  ]

  private_dns_enabled = true
}
#resource "aws_vpc_endpoint" "s3" {
#   vpc_id       = aws_vpc.custom_vpc.id
#   service_name = "com.amazonaws.us-east-1.s3"
#    vpc_endpoint_type = "Gateway"
#    subnet_ids = [aws_subnet.private_subnet[0].id,aws_subnet.private_subnet[1].id]
#   security_group_ids = [
#    aws_security_group.control_plane_sg.id,
#   ]

#   private_dns_enabled = true
# }