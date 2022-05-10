resource "aws_iam_role" "this" {
  name = local.app_name

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}

resource "aws_iam_instance_profile" "this" {
  name = "${local.app_name}Ec2InstanceProfile"
  role = aws_iam_role.this.name
}
