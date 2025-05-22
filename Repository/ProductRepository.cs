using System.Data;
using SimpleDownloaderApp.Models;
using Microsoft.Data.SqlClient;

namespace SimpleDownloaderApp.Repository;

public class ProductRepository : IProductRepository
{
    private SqlConnection _connection;

    public ProductRepository(SqlConnection connection)
    {
        _connection = connection;
    }

    public List<Product> GetAllProducts()
    {
        var products = new List<Product>();

        var query = @"
            SELECT
                ProductID,
                p.Name,
                ProductNumber,
                p.ProductSubcategoryID,
                psc.Name AS SubCategory,
                ListPrice
            FROM [Production].[Product] p
            JOIN [Production].[ProductSubcategory] psc
                ON p.ProductSubcategoryID = psc.ProductSubcategoryID
            WHERE FinishedGoodsFlag = 1 OR ListPrice > 0
        ";

        using var command = new SqlCommand(query, _connection);

        _connection.Open();

        using var reader = command.ExecuteReader();

        while (reader.Read())
        {
            var product = new Product
            {
                ProductID = reader.GetInt32(reader.GetOrdinal("ProductID")),
                Name = reader.GetString(reader.GetOrdinal("Name")),
                ProductNumber = reader.GetString(reader.GetOrdinal("ProductNumber")),
                ProductSubCategoryID = reader.GetInt32(reader.GetOrdinal("ProductSubcategoryID")),
                SubCategory = reader.GetString(reader.GetOrdinal("SubCategory")),
                ListPrice = reader.GetDecimal(reader.GetOrdinal("ListPrice")),
            };

            products.Add(product);
        }

        return products;
    }

    public List<Product> GetFinishedGoodsProducts()
    {
        var products = new List<Product>();

        using var command = new SqlCommand("dbo.usp_GetFinishedGoodsProducts", _connection)
        {
            CommandType = CommandType.StoredProcedure
        };

        _connection.Open();

        using var reader = command.ExecuteReader();

        while (reader.Read())
        {
            var product = new Product
            {
                ProductID = reader.GetInt32(reader.GetOrdinal("ProductID")),
                Name = reader.GetString(reader.GetOrdinal("Name")),
                ProductNumber = reader.GetString(reader.GetOrdinal("ProductNumber")),
                ProductSubCategoryID = reader.GetInt32(reader.GetOrdinal("ProductSubcategoryID")),
                SubCategory = reader.GetString(reader.GetOrdinal("SubCategory")),
                ListPrice = reader.GetDecimal(reader.GetOrdinal("ListPrice")),
            };

            products.Add(product);
        }

        return products;
    }

}