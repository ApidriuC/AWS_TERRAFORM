resource "aws_cloudwatch_log_group" "lambda_logs" {
  name = "/aws/lambda/${var.lambda_function_name}"
  
  # Cantidad de días reteninedo de los logs en CloudWatch.
  retention_in_days = 7
}