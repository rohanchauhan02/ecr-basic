resource "aws_secretsmanager_secret" "api" {
  name = "api/dev"
}

resource "aws_secretsmanager_secret_version" "go_sequence" {
  secret_id = aws_secretsmanager_secret.api.id

  secret_string = jsonencode({
    GO_PORT = "8000"
  })
}
