output "aws_iam_user" {
    value = aws_iam_user.demo
}

output "aws_iam_group_membership" {
    value = aws_iam_group_membership.administrators_users
}

output "aws_iam_policy_attachment" {
    value = aws_iam_policy_attachment.administrators-attach
}

 
