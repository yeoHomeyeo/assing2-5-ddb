# DynamoDB Table Resource
resource "aws_dynamodb_table" "chrisy_dynamodb_table" {
  name           = "${var.name_prefix}-ddb-table" # Name of the DynamoDB table
  billing_mode   = "PROVISIONED"                  # Pay-per-request billing mode
  read_capacity  = 5                              # Read capacity units (RCUs)
  write_capacity = 5                              # Write capacity units (WCUs)

  hash_key  = var.part_key # Partition key
  range_key = var.sort_key # Sort key

  # Attribute Definitions
  attribute {
    name = var.part_key # Partition key attribute
    type = "S"          # String type
  }

  attribute {
    name = var.sort_key # Sort key attribute
    type = "S"          # String type
  }

  # Tags
  tags = {
    Name        = "${var.name_prefix}-ddb-table"
    Environment = var.env
    Terraform   = "true"
  }
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.chrisy_dynamodb_table.name
}

# Output the DynamoDB Table ARN
output "dynamodb_table_arn" {
  value = aws_dynamodb_table.chrisy_dynamodb_table.arn
}

