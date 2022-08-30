module "dynamodb_table" {
  source = "git::https://github.com/HarshadRanganathan/terraform-aws-module-dynamodb.git//module?ref=master"
  create_table     = var.create_table
  name             = var.name
  hash_key         = var.hash_key
  range_key        = var.range_key
  table_class      = var.table_class

  billing_mode     = var.billing_mode

  read_capacity    = var.read_capacity
  write_capacity   = var.write_capacity
  stream_enabled   = var.stream_enabled
  stream_view_type = var.stream_view_type

  attributes = var.attributes

  ttl_enabled        = var.ttl_enabled
  ttl_attribute_name = var.ttl_attribute_name
  point_in_time_recovery_enabled  = var.point_in_time_recovery_enabled
  
  local_secondary_index    = var.local_secondary_index
  global_secondary_indexes = var.global_secondary_indexes
  replica_regions          = var.replica_regions

  server_side_encryption_enabled = var.server_side_encryption_enabled
  server_side_encryption_kms_key_arn = var.server_side_encryption_kms_key_arn
  timeouts  = var.timeouts
  tags = var.tags
}
