# Creación del ROL de IAM para la ejecución de la función Lambda.
resource "aws_iam_role" "lambda_role" {
  name = "lambda_execution_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

# Configuración de permisos básicos para la ejecución de la función Lambda.
resource "aws_iam_policy_attachment" "lambda_basic_execution" {
    
  # Identificador de la política predefinida de AWS.
  name      = "lambda_basic_execution"

  # Asociación con el ROL de IAM creado anteriormente.
  roles     = [aws_iam_role.lambda_role.name] 

  # Política predefinida de AWS para la ejecución de funciones Lambda.
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole" 
}
