provider "aws" {
    region = "eu-central-1"
}

module "prediction_function_execution_role" {
    source = "./modules/iam"
    role_name = "prediction_generator_function_execution_role"
    policy_name = "AWSLambdaBasicExecutionRole"
}

module "prediction_generator_lambda" {
    source = "./modules/lambda"
    function_name = "prediction_generator_function"
    runtime = "node.js20.x"
    handler = "index.handler"
    lambda_role_arn = module.prediction_function_execution_role.lambda_execution_role_arn
    lambda_zip_path = "${path.module}/prediction-generator-lambda.zip"
    lambda_enviroment_vars = {
        API_TOKEN = "test_value"
    }
}