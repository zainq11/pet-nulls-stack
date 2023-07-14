deployment "simple" {
  variables = {
    prefix           = "simple"
    instances        = 1
    aws_jwt_filepath = identity_token.aws.filepath
  }
}

deployment "complex" {
  variables = {
    prefix           = "complex"
    instances        = 3
    aws_jwt_filepath = identity_token.aws_production.filepath
  }
}

identity_token "aws" {
  audience = ["aws.workload.identity"]
}

identity_token "aws_production" {
  audience = ["aws.workload.identity", "compliance.production"]
}
