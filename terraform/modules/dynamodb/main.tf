resource "aws_dynamodb_table" "dynamodb_table" {
    name = var.table_name
    billing_mode = "PROVISIONED"
    read_capacity = var.read_capacity
    write_capacity = var.write_capacity

    hash_key = var.hash_key

    attribute {
      name = var.hash_key
      type = "S"
    }
}