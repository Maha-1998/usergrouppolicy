provider "aws" {
   region = "us-east-2"
}
resource "aws_iam_user" "User1" {
   name = "Maha1"
	}
resource "aws_iam_user" "User2" {
   name = "Maha2"
	}
resource "aws_iam_user" "User3" {
   name = "Maha3"
	}
resource "aws_iam_group" "Team1"{
   name = "L1Team"
	}
resource "aws_iam_group_membership" "team"{
   name = "adding group members"

   users = [
       aws_iam_user.User1.name,
       aws_iam_user.User2.name,
       aws_iam_user.User3.name
	]
   group = aws_iam_group.Team1.name

}

resource "aws_iam_group_policy_attachment" "test-attach" {
   group = aws_iam_group.Team1.name
   policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"

}
    
