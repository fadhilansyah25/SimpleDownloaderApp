using System.Data;
using Microsoft.Data.SqlClient;

namespace SimpleDownloaderApp.Models;

public class AdoDbContext : IDisposable
{
    public SqlConnection Connection { get; }

    public AdoDbContext(string connectionString)
    {
        Connection = new SqlConnection(connectionString);
        Connection.Open();
    }

    public void Dispose()
    {
        if (Connection.State == ConnectionState.Open)
        {
            Connection.Close();
        }
    }
}