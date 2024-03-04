import {
  id = "hackaton-one-click-plugin"
  to = aws_iam_user.this
}

resource "aws_iam_user" "this" {
  name = "hackaton-one-click-plugin"
}