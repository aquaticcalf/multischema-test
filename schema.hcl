table "products" {
  schema = schema.public
  column "id" {
    null = false
    type = sql("serial")
  }
  column "name" {
    null = false
    type = sql("text")
  }
  column "price" {
    null = true
    type = sql("decimal(10,2)")
  }
  
  primary_key {
    columns = [column.id]
  }
}

table "users" {
  schema = schema.private
  column "id" {
    null = false
    type = sql("serial")
  }
  column "email" {
    null = false
    type = sql("text")
  }
  column "assword" {
    null = false
    type = sql("text")
  }
  
  primary_key {
    columns = [column.id]
  }
}

schema "public" {
  comment = "Public schema for customer-facing data"
}

schema "private" {
  comment = "Private schema for internal data"
}