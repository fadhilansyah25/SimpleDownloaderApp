# 📥 SimpleDownloaderApp

**SimpleDownloaderApp** is a backend application built with ASP.NET Core that demonstrates managing product data and generating downloadable reports in PDF and Excel formats using ADO.NET, QuestPDF, and ClosedXML. The project follows clean architecture principles, making it suitable for portfolios, learning, or scalable real-world use.

---

## 📁 Project Structure

```
SimpleDownloaderApp/
│
├── Controllers/           # API Controllers
├── Services/              # Business logic (optional layer)
├── Models/                # Entity Models
├── Repositories/          # ADO.NET Repositories (SQL Server)
├── appsettings.json       # App configuration
├── Program.cs             # Application entry point
└── README.md              # This documentation
```

---

## 📚 Technologies Used

| Technology      | Purpose                        |
|-----------------|-------------------------------|
| ASP.NET Core    | RESTful API framework          |
| ADO.NET         | Raw data access (SQL Server)   |
| QuestPDF        | PDF generation                 |
| ClosedXML       | Excel spreadsheet generation   |
| Swagger         | API docs UI                    |

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/fadhilansyah25/SimpleDownloaderApp.git
cd SimpleDownloaderApp
```

### 2. Set Up the Database
Download and execute the SQL scripts provided in the `sql` folder to set up the database, tables, and stored procedures:

1. **Create the Database and Tables**

    - Open `BicycleShop.sql` in SQL Server Management Studio (SSMS) or Azure Data Studio.
    - Execute the script to create the `BicycleShop` database, tables, and insert sample data.

2. **Add Stored Procedures**

    - Open `StoredProcedure.sql` in your SQL editor.
    - Execute the script to create the required stored procedures in the `BicycleShop` database.

> **Tip:**  
> Make sure you run `BicycleShop.sql` first, then `StoredProcedure.sql`.

After running both scripts, your database will be ready for use with the application.

### 3. Configure `appsettings.json`

Edit the connection string:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=YOUR_SERVER;Database=BicycleShop;Trusted_Connection=True;TrustServerCertificate=True;"
  }
}
```
Replace `YOUR_SERVER` with your SQL Server instance name or `localhost`.

### 4. Run the App

```bash
dotnet run
```

Swagger UI: [http://localhost:5067/swagger](http://localhost:5067/swagger)

---

## 📬 API Endpoints

- **GET `/api/products`**  
    Returns a static list of sample products (not from the database).  
    - Output: JSON array of product objects.

- **GET `/database/products`**  
    Returns all products from the database using the repository.  
    - Output: JSON array of product objects.

- **GET `/download/excel`**  
    Downloads all finished goods products as an Excel file.  
    - Output: Downloadable `.xlsx` file with columns: ID, Name, Product Number, SubCategoryID, Sub Category, List Price.

- **GET `/download/pdf`**  
    Downloads all finished goods products as a PDF report.  
    - Output: Downloadable PDF file (A4, styled table, includes product details).

---

## 🧪 Testing (Optional)

You can add tests using:

- **xUnit** for unit testing
- **Moq** to mock `IProductRepository`

This is helpful if you plan to scale or convert this into production-grade software.
