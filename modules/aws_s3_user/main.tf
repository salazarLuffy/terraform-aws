resource "aws_iam_access_key" "s3User" {
  user = aws_iam_user.s3User.name
}

resource "aws_iam_user" "s3User" {
  name = var.s3_user_name
  path = "/"
}

resource "aws_iam_user_policy" "s3UserRole" {
  name = "s3UserRole"
  user = aws_iam_user.s3User.name

  policy = file("./s3UserPolicy.json")
}
