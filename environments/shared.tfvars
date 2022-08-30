  create_table     = true
  billing_mode     = "PAY_PER_REQUEST"

  timeouts  = {
    create = "10m"
    update = "60m"
    delete = "10m"
  }