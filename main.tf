 resource "aws_instance" "ec2-instance1" {
   ami = "ami-02dfbd4ff395f2a1b"
   instance_type = "c7i-flex.large"

   tags = {                                
     Name = "demo-server1"
}
}


resource "aws_instance" "ec2-Instance2" {
  provider      = aws.west
  ami           = "ami-0a5ed7a812aeb495a"  # AMI for us-west-1
  instance_type = "c7i-flex.large"

  tags = {                                
    Name = "demo-server2"
}
}