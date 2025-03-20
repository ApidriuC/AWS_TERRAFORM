# Región de AWS donde se desplegará la Lambda.
variable "aws_region" {
  description = "Región de AWS donde se desplegará la Lambda"
  type        = string
  default     = "us-east-1"
}

# Nombre de la función Lambda.
variable "lambda_function_name" {
  description = "Nombre de la función Lambda"
  type        = string
  default     = "MyLambdaFunction"
}
