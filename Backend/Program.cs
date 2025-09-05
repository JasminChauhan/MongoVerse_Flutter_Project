using Npgsql;
var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddCors(options => {
    options.AddPolicy("CORSPolicy",
        builder => builder.AllowAnyOrigin().AllowAnyHeader().AllowAnyMethod()
        );
});

var connectionString = builder.Configuration.GetConnectionString("postgresql");
if (string.IsNullOrEmpty(connectionString))
{
    throw new InvalidOperationException("Connection string 'MongoVerse' not found.");
}

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
app.UseCors("CORSPolicy");

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();

