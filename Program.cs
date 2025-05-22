using QuestPDF.Infrastructure;
using SimpleDownloaderApp.Models;
using SimpleDownloaderApp.Repositories;

// Configure QuestPDF community license
QuestPDF.Settings.License = LicenseType.Community;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllers();

// Add dbcontext to ADO .Net
builder.Services.AddScoped<AdoDbContext>(options =>
{
    var config = options.GetRequiredService<IConfiguration>();
    var connStr = config.GetConnectionString("DefaultConnection")
                  ?? throw new InvalidOperationException("Missing connection string.");
    return new AdoDbContext(connStr);
});

// Add repository dependency injection 
builder.Services.AddScoped<IProductRepository, ProductRepository>();

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();
app.MapControllers();

app.Run();