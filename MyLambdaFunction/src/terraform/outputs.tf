output "lambda_arn" {
  description = "ARN de la función Lambda"
  value       = aws_lambda_function.lambda.arn
}

output "lambda_invoke_arn" {
  description = "ARN para invocar la función Lambda"
  value       = aws_lambda_function.lambda.invoke_arn
}

output "lambda_role_name" {
  description = "Nombre del rol IAM asociado a la Lambda"
  value       = aws_iam_role.lambda_role.name
}

output "cloudwatch_log_group" {
  description = "Grupo de logs en CloudWatch"
  value       = aws_cloudwatch_log_group.lambda_logs.name
}