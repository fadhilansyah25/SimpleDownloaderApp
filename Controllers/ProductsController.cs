using System.Net.Mime;
using ClosedXML.Excel;
using Microsoft.AspNetCore.Mvc;
using QuestPDF.Fluent;
using QuestPDF.Helpers;
using QuestPDF.Infrastructure;
using SimpleDownloaderApp.Models;
using SimpleDownloaderApp.Repositories;

namespace SimpleDownloaderApp.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ProductsController : ControllerBase
{
    private readonly IProductRepository _productRepo;

    public ProductsController(IProductRepository productRepo)
    {
        _productRepo = productRepo;
    }

    /// <summary>
    /// Get all products
    /// </summary>
    [HttpGet]
    public List<Product> GetAllProducts()
    {
        return new List<Product>
        {
            new Product { ProductID = 1, Name = "Mountain Bike", SubCategory = "Bikes", ListPrice = 1200.00m },
            new Product { ProductID = 2, Name = "Road Bike", SubCategory = "Bikes", ListPrice = 950.00m },
            new Product { ProductID = 3, Name = "Touring Bike", SubCategory = "Bikes", ListPrice = 1100.00m },
            new Product { ProductID = 4, Name = "Handlebar Grips", SubCategory = "Components", ListPrice = 15.50m },
            new Product { ProductID = 5, Name = "Bike Helmet", SubCategory = "Accessories", ListPrice = 65.00m },
            new Product { ProductID = 6, Name = "Cycling Jersey", SubCategory = "Apparel", ListPrice = 45.99m },
            new Product { ProductID = 7, Name = "Water Bottle", SubCategory = "Accessories", ListPrice = 8.75m },
            new Product { ProductID = 8, Name = "Disc Brake Set", SubCategory = "Components", ListPrice = 150.00m },
            new Product { ProductID = 9, Name = "Bike Pump", SubCategory = "Tools", ListPrice = 25.00m },
            new Product { ProductID = 10, Name = "Cycling Shorts", SubCategory = "Apparel", ListPrice = 55.00m }
        };
    }

    /// <summary>
    /// Get all products from database
    /// </summary>
    [HttpGet("/database/products")]
    public List<Product> GetAllProductsFromDatabase()
    {
        return _productRepo.GetAllProducts();
    }

    /// <summary>
    /// Download finished goods products data in Excel format.
    /// </summary>
    /// <remarks>
    /// Generates an Excel file containing all finished goods product data.
    /// </remarks>
    /// <returns>
    /// Returns an Excel (.xlsx) file with the list of finished goods products.
    /// </returns>
    /// <response code="200">Returns the Excel file containing product data.</response>
    /// <response code="500">If an error occurs while generating the Excel file.</response>
    [HttpGet("/download/excel")]
    public IActionResult GetFinishedGoodsExcelFile()
    {
        var products = _productRepo.GetFinishedGoodsProducts();

        using (var workbook = new XLWorkbook())
        {
            var worksheet = workbook.Worksheets.Add("Finished Goods Products");

            worksheet.Cell(1, 1).SetValue("ID").Style.Font.SetBold();
            worksheet.Cell(1, 2).SetValue("Name").Style.Font.SetBold();
            worksheet.Cell(1, 3).SetValue("Product Number").Style.Font.SetBold();
            worksheet.Cell(1, 4).SetValue("SubCategoryID").Style.Font.SetBold();
            worksheet.Cell(1, 5).SetValue("Sub Category").Style.Font.SetBold();
            worksheet.Cell(1, 6).SetValue("List Price").Style.Font.SetBold();

            int row = 2;
            foreach (var product in products)
            {
                worksheet.Cell(row, 1).SetValue(product.ProductID);
                worksheet.Cell(row, 2).SetValue(product.Name);
                worksheet.Cell(row, 3).SetValue(product.ProductNumber);
                worksheet.Cell(row, 4).SetValue(product.ProductSubCategoryID);
                worksheet.Cell(row, 5).SetValue(product.SubCategory);
                worksheet.Cell(row, 6).SetValue(product.ListPrice).Style.NumberFormat.SetFormat("$0.00");
                row++;
            }

            worksheet.Columns().AdjustToContents();

            using (var stream = new MemoryStream())
            {
                workbook.SaveAs(stream);
                var content = stream.ToArray();
                return File(content, MediaTypeNames.Application.Octet, "products.xlsx");
            }
        }
    }

    /// <summary>
    /// Download finished goods products data in PDF format.
    /// </summary>
    /// <remarks>
    /// Generates a PDF file containing all finished goods product data.
    /// </remarks>
    /// <returns>
    /// Returns a PDF file with the list of finished goods products.
    /// </returns>
    /// <response code="200">Returns the PDF file containing product data.</response>
    /// <response code="500">If an error occurs while generating the PDF file.</response>
    [HttpGet("/download/pdf")]
    public IActionResult GetFinishedGoodsPdfFile()
    {
        var products = _productRepo.GetFinishedGoodsProducts(); ;

        var document = Document.Create(container =>
            {
                container.Page(page =>
                {
                    page.Size(PageSizes.A4);
                    page.Margin(30);
                    page.DefaultTextStyle(x => x.FontSize(11));

                    page.Header()
                        .PaddingBottom(15)
                        .Text("Product Data Record")
                        .Bold().FontSize(20).AlignCenter();

                    page.Content().Table(table =>
                    {
                        table.ColumnsDefinition(columns =>
                        {
                            columns.ConstantColumn(40);
                            columns.RelativeColumn(2);
                            columns.RelativeColumn();
                            columns.ConstantColumn(60);
                            columns.RelativeColumn(1.5f);
                            columns.RelativeColumn();
                        });

                        // Header
                        table.Header(header =>
                        {
                            header.Cell().Element(CellStyle).Text("ID").Bold();
                            header.Cell().Element(CellStyle).Text("Name").Bold();
                            header.Cell().Element(CellStyle).Text("Product Number").Bold();
                            header.Cell().Element(CellStyle).Text("SubCat ID").Bold();
                            header.Cell().Element(CellStyle).Text("Sub Category").Bold();
                            header.Cell().Element(CellStyle).Text("List Price").Bold();

                            static IContainer CellStyle(IContainer container)
                            {
                                return container
                                    .Background(Colors.Blue.Darken2)
                                    .DefaultTextStyle(x => x.FontColor(Colors.White).Bold());
                            }
                        });

                        // Rows
                        for (int i = 0; i < products.Count; i++)
                        {
                            table.Cell().Element(CellStyle).Text(products[i].ProductID.ToString());
                            table.Cell().Element(CellStyle).Text(products[i].Name);
                            table.Cell().Element(CellStyle).Text(products[i].ProductNumber);
                            table.Cell().Element(CellStyle).Text(products[i].ProductSubCategoryID.ToString());
                            table.Cell().Element(CellStyle).Text(products[i].SubCategory);
                            table.Cell().Element(CellStyle).Text($"{products[i].ListPrice:C}");

                            IContainer CellStyle(IContainer container)
                            {
                                var backgroundColor = i % 2 == 0
                                    ? Colors.Blue.Lighten5
                                    : Colors.Blue.Lighten4;

                                return container
                                    .Background(backgroundColor);
                            }
                        }
                    });

                    // 📄 Footer
                    page.Footer().PaddingTop(15).AlignRight()
                        .Text(x =>
                        {
                            x.Span("Page ").FontSize(10);
                            x.CurrentPageNumber().FontSize(10);
                            x.Span(" of ").FontSize(10);
                            x.TotalPages().FontSize(10);
                        });
                });

            });


        using (var stream = new MemoryStream())
        {
            document.GeneratePdf(stream);
            var content = stream.ToArray();
            return File(content, MediaTypeNames.Application.Pdf, "product.pdf");
        }
    }
}