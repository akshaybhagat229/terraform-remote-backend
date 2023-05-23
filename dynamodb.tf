resource "aws_dynamodb_table" "state_table" {
    name = var.state_table
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }  
    tags = {
         Name        = var.state_table
    }
}