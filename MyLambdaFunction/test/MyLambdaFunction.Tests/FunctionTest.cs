using Xunit;

namespace MyLambdaFunction.Tests;

/// <summary/>
public class FunctionTest
{
    [Fact]
    public async Task TestFunction()
    {
        string messageTest = "My first lambda";
        string messageResponse = await Function.FunctionHandler(messageTest);

        Assert.Equal($"Hola desde AWS Lambda con .NET. Entrada: {messageTest}", messageResponse);
    }
}
