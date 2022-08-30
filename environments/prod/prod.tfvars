  stage       = "prod"
  name        = "test-dynamodb"
  hash_key    = "transactionId"

 
  table_class = "STANDARD"
  billing_mode     = "PAY_PER_REQUEST"

  attributes = [
    {
      name = "transactionId"
      type = "S"
    }
  ]

server_side_encryption_enabled = "enabled"

tags = {
  Name      = "test-dynamodb"
  Team      = "aws",
  ManagedBy = "Terraform",
  Stage     = "alpha"
}