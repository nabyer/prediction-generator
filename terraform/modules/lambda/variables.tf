variable "function_name" {
    description = "The name of the Lambda function."
    type = string
}

variable "lambda_role_arn" {
    description = "The ARN of the Lambda execution role"
    type = string
}

variable "handler" {
    description = "The function handler in the code"
    type = string
}

variable "runtime" {
    description = "The runtime for the Lambda function"
    type = string
}

variable "lambda_zip_path" {
    description = "The path to the Lambda ZIP file"
    type = string
}

variable "lambda_enviroment_vars" {
    description = "Enviroment variables for the Lambda function"
    type = map(string)
}