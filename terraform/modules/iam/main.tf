resource "aws_iam_role" "lambda_execution_role" {
    name = var.role_name

    assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "sts:AssumeRole"
            ],
            "Principal": {
                "Service": [
                    "lambda.amazonaws.com"
                ]
            }
        }
    ]
})
  
}

resource "aws_iam_role_policy_attachment" "lambda_execution_role_policy_attachment" {
    role = aws_iam_role.lambda_execution_role.name
    policy_arn = "arn:aws:iam::aws:policy/service-role/${var.policy_name}"
  
}