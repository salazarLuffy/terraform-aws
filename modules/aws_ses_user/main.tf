resource "aws_iam_access_key" "sesUser" {
  user = aws_iam_user.sesUser.name
}

resource "aws_iam_user" "sesUser" {
  name = var.ses_user_name
  path = "/"
}

resource "aws_iam_user_policy" "sesUserRole" {
  name = "sesUserRole"
  user = aws_iam_user.sesUser.name

  policy = file("./sesUserPolicy.json")
}
