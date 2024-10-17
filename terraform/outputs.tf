output "prediction_generator_function_arn" {
    description = "ARN of the prediction generator function."
    value = module.prediction_generator_lambda.lambda_function_arn
}

output "prediction_generator_function_execution_role_arn" {
    description = "ARN of the lambda execution role of the prediction generator function."
    value = module.prediction_generator_execution_role.lambda_execution_role_arn
}

output "prediction_dynamodb_table" {
    description = "The name of the predictions DynamoDB table."
    value = module.prediction_dynamodb_table.dynamodb_table_name
}