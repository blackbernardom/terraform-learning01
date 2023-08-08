data "aws_ami" "ubuntu" {
    owners = ["amazon"]
    most_recent =  true
    name_regex = "ubuntu"

    filter {
      name = "architecture"
      values = ["x86_64"]
    }
  
}

resource "aws_instance" "this" {
    for_each = {
      "web" ={
        name = "web serber"
        type = "t2.micro"
      } 
      ci_cd = {
        name = "ci/cd"
        type = "t2.micro"
      }
    }

    ami = data.aws_ami.ubuntu.id
    instance_type = lookup(each.value, "type", null)
  
tags = {
    Project = "Estudos FOREACH"
    Name = "${each.key}: ${lookup(each.value, "name", null)}"
    Lesson = "Foreach, For, Splat"
}

}
