var builder = WebApplication.CreateBuilder(args);

var app = builder.Build();

app.MapGet("/", () => "GET no kong");

app.MapGet("/status", () => "GET Status no kong");

app.MapPost("/novo-status", () => "POST Novo Status no Kong");

app.Run("http://0.0.0.0:8080");
