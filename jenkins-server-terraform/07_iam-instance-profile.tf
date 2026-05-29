resource "aws_iam_instance_profile" "instance-profile" {
  name = "jenkins-server-instance-profile"
  role = aws_iam_role.iam-role.name
}
resource "aws_iam_role_policy_attachment" "admin_access" {
  role       = aws_iam_role.iam-role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}