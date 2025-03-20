# Creación y configuración de la función Lambda.
resource "aws_lambda_function" "lambda" {

  # Identificador de la función Lambda.
  function_name = var.lambda_function_name
  
  # ROL de IAM que se asignará a la función Lambda.
  role          = aws_iam_role.lambda_role.arn

  # Nombre de la clase y método que se ejecutarán en la función Lambda.
  handler       = "MyLambdaFunction::MyLambdaFunction.Function::FunctionHandler"

  # Lenguaje de programación y versión utilizada en la función Lambda.
  runtime       = "dotnet8"

  # Archivo ZIP que contiene el código de la función Lambda.
  filename         = "../MyLambdaFunction/MyLambdaFunction.zip"

  # Hash SHA256 del archivo ZIP para comparación de cambios.
  source_code_hash = filebase64sha256("../MyLambdaFunction/MyLambdaFunction.zip")

  # Configuración de recursos para la ejecución de la función Lambda.
  memory_size = 128

  # Configuración de tiempo de espera para la ejecución de la función Lambda.
  timeout     = 10
}