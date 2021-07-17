# Creating group administrators

resource "aws_iam_group" "administrators" {
    name = var.group_names

}


# Creating policy for users in the group.

resource "aws_iam_policy_attachment" "administrators-attach" {
    name = var.policy_attachment
    groups = ["${aws_iam_group.administrators.name}"]
    policy_arn = var.policy_arn

}


# create users

resource "aws_iam_user" "demo" {
  count = var.instance_count

  name = var.user_name[count.index]
}



# add users to a group :)


resource "aws_iam_group_membership" "administrators_users" {
  name       = var.group_membership_names
  users      = var.user_name

   group = "${aws_iam_group.administrators.name}"
}


                                                               
