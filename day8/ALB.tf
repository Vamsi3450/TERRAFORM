resource "aws_alb_target_group" "TG" {
    target_type = "instance"
    protocol = "HTTP"
    port = "80"
    vpc_id = aws_vpc.name.id
    protocol_version = "HTTP1"
    tags = {
      Name = "alb_vamsi"
    }
  
}

resource "aws_lb" "ALB" {
    internal = false
    load_balancer_type = "application"
    subnets = [aws_subnet.pub1.id, aws_subnet.pub2.id]
    depends_on = [ aws_alb_target_group.TG]
    tags = {
      Name = "ALB_VAMSI"
    }


}

