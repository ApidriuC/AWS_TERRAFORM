namespace MyLambdaFunction;

/// <summary/>
public class Function
{
    /// <summary>
    /// Lambda function handler.
    /// </summary>
    /// <param name="input">Body input.</param>
    /// <returns>Message response.</returns>
    public static async Task<string> FunctionHandler(string input)
    {
        Console.WriteLine("¡Lambda ejecutada correctamente!");
        return await Task.FromResult($"Hola desde AWS Lambda con .NET. Entrada: {input}");
    }
}