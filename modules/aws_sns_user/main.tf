resource "aws_iam_access_key" "snsUser" {
  user = aws_iam_user.snsUser.name
}

resource "aws_iam_user" "snsUser" {
  name = var.sns_user_name
  path = "/"
}

resource "aws_iam_user_policy" "snsUserRole" {
  name = "snsUserRole"
  user = aws_iam_user.snsUser.name

  policy = file("./snsUserPolicy.json")
}
