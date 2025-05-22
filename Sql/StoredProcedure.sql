
USE BicycleShop;
    GO

CREATE PROCEDURE [dbo].[usp_GetFinishedGoodsProducts]
AS
BEGIN
    WITH
        ProductCTE
        AS
        (
            SELECT
                ProductID,
                p.Name,
                ProductNumber,
                p.ProductSubcategoryID,
                psc.Name AS "SubCategory",
                ListPrice
            FROM [Production].[Product] p
                JOIN [Production].[ProductSubcategory] psc
                ON p.ProductSubcategoryID = psc.ProductSubcategoryID
            WHERE FinishedGoodsFlag = 1 OR ListPrice > 0
        )
    SELECT
        ProductID,
        Name,
        ProductNumber,
        ProductSubcategoryID,
        SubCategory,
        ListPrice
    FROM ProductCTE
    ORDER BY ListPrice DESC;
END
