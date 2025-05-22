namespace SimpleDownloaderApp.Models;

public class Product
{

    public int ProductID { get; set; }
    public string Name { get; set; } = "";
    public string ProductNumber { get; set; } = "";
    public int ProductSubCategoryID { get; set; }
    public string SubCategory { get; set; } = "";
    public decimal ListPrice { get; set; }
}