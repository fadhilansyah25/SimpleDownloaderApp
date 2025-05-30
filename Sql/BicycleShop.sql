USE master;

IF EXISTS (
	SELECT name
FROM sys.databases
WHERE name = N'BicycleShop'
) BEGIN
	DROP DATABASE BicycleShop
END
	GO

CREATE DATABASE BicycleShop;
GO

USE BicycleShop;
GO

CREATE SCHEMA [Production];
GO

CREATE TABLE [Production].[Product]
(
	[ProductID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Name] [nvarchar](255) NOT NULL,
	[ProductNumber] [nvarchar](25) NOT NULL,
	[MakeFlag] [bit] NOT NULL,
	[FinishedGoodsFlag] [bit] NOT NULL,
	[Color] [nvarchar](15) NULL,
	[SafetyStockLevel] [smallint] NOT NULL,
	[ReorderPoint] [smallint] NOT NULL,
	[StandardCost] [money] NOT NULL,
	[ListPrice] [money] NOT NULL,
	[Size] [nvarchar](5) NULL,
	[SizeUnitMeasureCode] [nchar](3) NULL,
	[WeightUnitMeasureCode] [nchar](3) NULL,
	[Weight] [decimal](8, 2) NULL,
	[DaysToManufacture] [int] NOT NULL,
	[ProductLine] [nchar](2) NULL,
	[Class] [nchar](2) NULL,
	[Style] [nchar](2) NULL,
	[ProductSubcategoryID] [int] NULL,
	[ProductModelID] [int] NULL,
	[SellStartDate] [datetime] NOT NULL,
	[SellEndDate] [datetime] NULL,
	[DiscontinuedDate] [datetime] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
)

CREATE TABLE [Production].[ProductSubcategory]
(
	[ProductSubcategoryID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ProductCategoryID] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
)

SET IDENTITY_INSERT [Production].[Product] ON
GO
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(1, N'Adjustable Race', N'AR-5381', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'694215b7-08f7-4c0d-acb1-d734ba44c0c8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(2, N'Bearing Ball', N'BA-8327', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'58ae3c20-4f3a-4749-a7d4-d568806cc537', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(3, N'BB Ball Bearing', N'BE-2349', 1, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'9c21aed2-5bfa-4f18-bcb8-f11638dc2e4e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(4, N'Headset Ball Bearings', N'BE-2908', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'ecfed6cb-51ff-49b5-b06c-7d8ac834db8b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(316, N'Blade', N'BL-2036', 1, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'e73e9750-603b-4131-89f5-3dd15ed5ff80', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(317, N'LL Crankarm', N'CA-5965', 0, 0, N'Black', 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, N'L ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'3c9d10b7-a6b2-4774-9963-c19dcee72fea', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(318, N'ML Crankarm', N'CA-6738', 0, 0, N'Black', 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, N'M ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'eabb9a92-fa07-4eab-8955-f0517b4a4ca7', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(319, N'HL Crankarm', N'CA-7457', 0, 0, N'Black', 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'7d3fd384-4f29-484b-86fa-4206e276fe58', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(320, N'Chainring Bolts', N'CB-2903', 0, 0, N'Silver', 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'7be38e48-b7d6-4486-888e-f53c26735101', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(321, N'Chainring Nut', N'CN-6137', 0, 0, N'Silver', 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'3314b1d7-ef69-4431-b6dd-dc75268bd5df', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(322, N'Chainring', N'CR-7833', 0, 0, N'Black', 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'f0ac2c4d-1a1f-4e3c-b4d9-68aea0ec1ce4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(323, N'Crown Race', N'CR-9981', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'51a32ca6-65a1-4c31-af2b-d9e4f5d631d4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(324, N'Chain Stays', N'CS-2812', 1, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'fe0678ed-aef2-4c58-a450-8151cc24ddd8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(325, N'Decal 1', N'DC-8732', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'05ce123c-a402-478e-ae9b-75d7727aeaad', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(326, N'Decal 2', N'DC-9824', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'a56851f9-1cd7-4e2f-8779-2e773e1b5209', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(327, N'Down Tube', N'DT-2377', 1, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'1dad47dd-e259-42b8-b8b4-15a0b7d21b2f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(328, N'Mountain End Caps', N'EC-M092', 1, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'6070b1ea-59b7-4f8b-950f-2be07d00449d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(329, N'Road End Caps', N'EC-R098', 1, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'88399d13-719e-4545-81d6-f0650f372fa2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(330, N'Touring End Caps', N'EC-T209', 1, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'6903ce24-d0ce-4191-9198-4231de37a929', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(331, N'Fork End', N'FE-3760', 1, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'c91d602e-da52-43d2-bd7e-eb110a9392b9', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(332, N'Freewheel', N'FH-2981', 0, 0, N'Silver', 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'd864879a-e8b1-4f7b-bafa-1f136089c2c8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(341, N'Flat Washer 1', N'FW-1000', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'a3f2fa3a-22e1-43d8-a131-a9b89c32d8ea', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(342, N'Flat Washer 6', N'FW-1200', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'331addec-e9b9-4a7e-9324-42069c2dcdc4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(343, N'Flat Washer 2', N'FW-1400', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'84a3473e-ae26-4a21-81b9-60bb418a79b2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(344, N'Flat Washer 9', N'FW-3400', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'0ae4ce60-5242-48f5-ada1-3013ff45f969', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(345, N'Flat Washer 4', N'FW-3800', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'2c1c58b4-234c-4b3a-8c8e-84524ac05eea', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(346, N'Flat Washer 3', N'FW-5160', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'590c2c3f-a8b6-42b5-9412-d655e37f0eae', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(347, N'Flat Washer 8', N'FW-5800', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'1b73f5fe-ab85-49fc-99ad-0500cebda91d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(348, N'Flat Washer 5', N'FW-7160', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'd182cf18-4ddf-429b-a0df-de1cfc92622d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(349, N'Flat Washer 7', N'FW-9160', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'7e55f64d-ea3c-45ff-be72-f7f7b9d61a79', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(350, N'Fork Crown', N'FC-3654', 1, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'1cbfa85b-5c9b-4b58-9c17-95238215d926', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(351, N'Front Derailleur Cage', N'FC-3982', 0, 0, N'Silver', 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'01c901e3-4323-48ed-ab9e-9bfda28bdef6', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(352, N'Front Derailleur Linkage', N'FL-2301', 0, 0, N'Silver', 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'88ed2e08-e775-4915-b506-831600b773fd', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(355, N'Guide Pulley', N'GP-0982', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'6a89205b-90c3-4997-8c63-bc6a5ebc752d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(356, N'LL Grip Tape', N'GT-0820', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, N'L ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'32c82181-1969-4660-ae04-a02d51994ec1', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(357, N'ML Grip Tape', N'GT-1209', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, N'M ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'09343e22-2494-4279-9f32-5d961a0fbfea', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(358, N'HL Grip Tape', N'GT-2908', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'8e5b2bf7-81dd-4454-b75e-d9ae2a6fbd26', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(359, N'Thin-Jam Hex Nut 9', N'HJ-1213', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'a63aff3c-4143-4016-bc99-d3f80ec1ade5', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(360, N'Thin-Jam Hex Nut 10', N'HJ-1220', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'a1ae0c6d-92a5-4fda-b33b-1301e83efe5b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(361, N'Thin-Jam Hex Nut 1', N'HJ-1420', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'e33e8c4c-282a-4d1f-91e7-e9969cf7134f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(362, N'Thin-Jam Hex Nut 2', N'HJ-1428', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'a992684f-4642-4856-a817-2c0740ae8c55', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(363, N'Thin-Jam Hex Nut 15', N'HJ-3410', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'b9d9a30d-cb07-422d-a312-f0535575337e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(364, N'Thin-Jam Hex Nut 16', N'HJ-3416', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'0ec8f653-24c9-41b6-86f5-39c1789db580', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(365, N'Thin-Jam Hex Nut 5', N'HJ-3816', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'94506c9d-5991-46a7-82ea-00e05d8d9b9c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(366, N'Thin-Jam Hex Nut 6', N'HJ-3824', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'71e984c6-1d11-4cf2-baee-6c8df494bdad', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(367, N'Thin-Jam Hex Nut 3', N'HJ-5161', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'efc09cdb-ecd5-4db5-9e27-277dda6d7f50', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(368, N'Thin-Jam Hex Nut 4', N'HJ-5162', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'0a0c93aa-d06c-48aa-99eb-20f2c8a6d6c4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(369, N'Thin-Jam Hex Nut 13', N'HJ-5811', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'a2728648-9517-4dec-8606-d7d98ecd1e91', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(370, N'Thin-Jam Hex Nut 14', N'HJ-5818', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'0a7ad37c-3696-4844-8633-9fddcd5fcefc', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(371, N'Thin-Jam Hex Nut 7', N'HJ-7161', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'acbb1de1-680c-4034-a8c5-3c6b01e57aa7', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(372, N'Thin-Jam Hex Nut 8', N'HJ-7162', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'a0da8f8f-45fb-4e62-ab14-aa229087de1e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(373, N'Thin-Jam Hex Nut 12', N'HJ-9080', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'db99cbcd-f18d-4979-8dcf-1012f3b1cb15', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(374, N'Thin-Jam Hex Nut 11', N'HJ-9161', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'ec2e54f5-9d07-4c26-b969-40f835395be3', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(375, N'Hex Nut 5', N'HN-1024', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'f2f3a14c-df15-4957-966d-55e5fcad1161', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(376, N'Hex Nut 6', N'HN-1032', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'e73e44dd-f0b7-45d4-9066-e49f1b1fe7d0', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(377, N'Hex Nut 16', N'HN-1213', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'2b2a5641-bffe-4079-b9f0-8bf355bc3996', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(378, N'Hex Nut 17', N'HN-1220', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'f70bbecd-5be7-4ee9-a9e7-15786e622ba9', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(379, N'Hex Nut 7', N'HN-1224', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'ba3631d1-33d6-4a2f-8413-758bfda6f9c2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(380, N'Hex Nut 8', N'HN-1420', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'b478b33a-1fd5-4db6-b99a-eb3b2a7c1623', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(381, N'Hex Nut 9', N'HN-1428', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'da46d979-59df-456d-b5ae-e7e89fc589df', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(382, N'Hex Nut 22', N'HN-3410', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'2f457404-197d-4ddf-9868-a3aad1b32d6b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(383, N'Hex Nut 23', N'HN-3416', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'5f02449e-96e5-4fc8-ade0-8a9a7f533624', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(384, N'Hex Nut 12', N'HN-3816', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'32c97696-7c3d-4793-a54b-3d73200badbc', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(385, N'Hex Nut 13', N'HN-3824', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'8f0902d0-274d-4a4b-8fde-e37f53b2ab29', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(386, N'Hex Nut 1', N'HN-4402', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'57456f8c-cb78-45ec-b9b8-21a9be5c12f5', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(387, N'Hex Nut 10', N'HN-5161', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'955811b4-2f17-48f0-a8b4-0c96cba4aa6d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(388, N'Hex Nut 11', N'HN-5162', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'7d4bad17-374f-4281-9ae5-49abc3fe585d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(389, N'Hex Nut 2', N'HN-5400', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'17c4b7ba-8574-4ec7-bd3b-7a51aba61f69', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(390, N'Hex Nut 20', N'HN-5811', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'b4e990b7-b3f7-4f97-8f98-ce373833adb4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(391, N'Hex Nut 21', N'HN-5818', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'433ee702-e028-4630-895c-8cdbd0f1fd89', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(392, N'Hex Nut 3', N'HN-6320', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'ee76fae0-161e-409c-a6f5-837b5b8b344d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(393, N'Hex Nut 14', N'HN-7161', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'eb10b88c-5351-4c06-af51-116baa48a2c8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(394, N'Hex Nut 15', N'HN-7162', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'35e28755-e8f0-47be-a8be-a20836dbe28d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(395, N'Hex Nut 4', N'HN-8320', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'69ab8d5e-6101-4203-81b1-794e923782ea', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(396, N'Hex Nut 18', N'HN-9161', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'39d42384-66f6-4ccd-b471-0589fc3fc576', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(397, N'Hex Nut 19', N'HN-9168', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'b63f827e-9055-4678-9e90-4ffd8d06d4d4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(398, N'Handlebar Tube', N'HT-2981', 1, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'9f88c58e-5cfa-46c9-8994-da4f3ffe92ed', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(399, N'Head Tube', N'HT-8019', 1, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'b047c048-b4fb-4f80-94bc-c5fc00a6f77f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(400, N'LL Hub', N'HU-6280', 1, 0, NULL, 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, N'L ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'ab332dda-dda5-44ad-8c50-34ffaceffa8e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(401, N'HL Hub', N'HU-8998', 1, 0, NULL, 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'd59403a3-d19e-4803-bda2-b436a6416fda', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(402, N'Keyed Washer', N'KW-4091', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'43024784-2741-4cab-a6dc-8050ce507f2e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(403, N'External Lock Washer 3', N'LE-1000', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'763412f0-6d53-43e2-b371-dcbed69f5e98', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(404, N'External Lock Washer 4', N'LE-1200', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'89b6e84f-5c08-4cd9-b803-01f2ce24e417', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(405, N'External Lock Washer 9', N'LE-1201', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'3330a721-e8cb-4e67-8d27-300db68c2395', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(406, N'External Lock Washer 5', N'LE-1400', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'39314098-768b-49f9-a777-af2e3bb06b17', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(407, N'External Lock Washer 7', N'LE-3800', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'93f7bc73-bd22-45a0-9f2e-a11932342e6b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(408, N'External Lock Washer 6', N'LE-5160', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'dc5f4cb0-a599-42cd-a96f-e9f01bc1dacc', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(409, N'External Lock Washer 1', N'LE-6000', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'802b7687-bc74-43f8-98ae-2112166faca7', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(410, N'External Lock Washer 8', N'LE-7160', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'02c48826-21ad-41f3-85a6-bc9a85a4dce4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(411, N'External Lock Washer 2', N'LE-8000', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'502a2a3d-cd72-43ad-8fb6-77505187edf4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(412, N'Internal Lock Washer 3', N'LI-1000', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'f1168c45-e4d2-4c37-adad-b76eaf402b71', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(413, N'Internal Lock Washer 4', N'LI-1200', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'7f7413bb-bad2-47e4-9bc4-d98b194be35d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(414, N'Internal Lock Washer 9', N'LI-1201', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'4f040109-8332-4fcf-8084-57e6d8c49283', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(415, N'Internal Lock Washer 5', N'LI-1400', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'0c02f2cc-bdb4-4794-a4f9-0eb33f7545c2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(416, N'Internal Lock Washer 7', N'LI-3800', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'3c2ac5bc-3f49-4fa4-8340-bc4cda983f46', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(417, N'Internal Lock Washer 6', N'LI-5160', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'7f175dfe-1669-4ee9-8eeb-7b55fce9961c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(418, N'Internal Lock Washer 10', N'LI-5800', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'c8323eec-bdb2-4933-b3c6-24287638ad56', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(419, N'Internal Lock Washer 1', N'LI-6000', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'71f8232d-2b59-41ac-99a1-f5ea197671b5', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(420, N'Internal Lock Washer 8', N'LI-7160', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'e2f03586-02e8-4cd9-a342-1a8d65d393bd', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
GO
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(421, N'Internal Lock Washer 2', N'LI-8000', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'97741a88-92a1-4e72-b0aa-bcb198a1c378', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(422, N'Thin-Jam Lock Nut 9', N'LJ-1213', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'7da2613b-3347-4072-a1dc-943ada161d7f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(423, N'Thin-Jam Lock Nut 10', N'LJ-1220', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'a88f15be-2719-4741-93a4-2d96ef3712eb', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(424, N'Thin-Jam Lock Nut 1', N'LJ-1420', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'48461e5d-d58a-47e5-8ba3-ce4430fca611', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(425, N'Thin-Jam Lock Nut 2', N'LJ-1428', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'36187eb6-ad84-47b7-a55e-2941d3435fe2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(426, N'Thin-Jam Lock Nut 15', N'LJ-3410', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'99215648-afe8-4556-bc80-b6c62ae74fc8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(427, N'Thin-Jam Lock Nut 16', N'LJ-3416', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'b4fc4c32-049c-417f-bbb0-f19cdfd64252', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(428, N'Thin-Jam Lock Nut 5', N'LJ-3816', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'a57b7915-2e65-49de-87ba-acd007c55adb', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(429, N'Thin-Jam Lock Nut 6', N'LJ-3824', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'5abd940c-d61f-4108-8312-0ea97e469613', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(430, N'Thin-Jam Lock Nut 3', N'LJ-5161', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'9883496f-4785-4bfc-8af3-c357347b9f89', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(431, N'Thin-Jam Lock Nut 4', N'LJ-5162', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'8c5ee683-d93c-4f25-9454-22faa4c31365', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(432, N'Thin-Jam Lock Nut 13', N'LJ-5811', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'38e4a447-3d3c-4087-abad-97f006525b52', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(433, N'Thin-Jam Lock Nut 14', N'LJ-5818', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'dce24b6c-76d8-4934-a4f6-c934364943ea', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(434, N'Thin-Jam Lock Nut 7', N'LJ-7161', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'344ad07c-cca5-4374-a3f3-8a7e0a1d9916', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(435, N'Thin-Jam Lock Nut 8', N'LJ-7162', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'b2508cf2-c64f-493d-9db4-0d6601af1f73', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(436, N'Thin-Jam Lock Nut 12', N'LJ-9080', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'5d3e589f-4584-406b-b9cc-3c8c060cb9a5', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(437, N'Thin-Jam Lock Nut 11', N'LJ-9161', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'64169a28-161c-4737-b724-f42ffd99de80', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(438, N'Lock Nut 5', N'LN-1024', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'eb4c1d34-4816-4130-bb30-07b4de4072b6', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(439, N'Lock Nut 6', N'LN-1032', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'98ccbb38-4683-486e-bbfe-cbbe4ea63c03', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(440, N'Lock Nut 16', N'LN-1213', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'bbfd88f8-28c5-44ee-b625-52e882393dfc', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(441, N'Lock Nut 17', N'LN-1220', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'92dc4ba8-a052-45df-83ec-226f050f876b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(442, N'Lock Nut 7', N'LN-1224', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'd583d825-c707-4529-b6f2-abffa21b81ec', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(443, N'Lock Nut 8', N'LN-1420', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'e91c3dc2-c99b-4d01-8108-5dde3c87830a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(444, N'Lock Nut 9', N'LN-1428', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'06534a20-4c00-4824-8bba-b4e3a5724d93', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(445, N'Lock Nut 22', N'LN-3410', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'1e4fa4ec-367e-4d8d-88b4-6cd34d1cfb89', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(446, N'Lock Nut 23', N'LN-3416', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'afa814c8-8ec8-49db-9fee-a291197a8fe9', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(447, N'Lock Nut 12', N'LN-3816', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'9a751f85-7130-4562-9f22-db9cab6e5bbc', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(448, N'Lock Nut 13', N'LN-3824', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'06be8347-45c1-4c40-afcb-6ab34ad135fb', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(449, N'Lock Nut 1', N'LN-4400', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'1dc29704-e0e0-4ef5-b581-4a524730c448', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(450, N'Lock Nut 10', N'LN-5161', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'612c26c7-6018-4050-b628-8b2d2e6841fa', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(451, N'Lock Nut 11', N'LN-5162', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'5bcc4558-6c16-48f1-92f0-fd2eefb17306', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(452, N'Lock Nut 2', N'LN-5400', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'53ad147d-c16d-4a8c-b086-625a31405574', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(453, N'Lock Nut 20', N'LN-5811', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'2749030e-49b7-4b24-8d47-fbcf194aba38', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(454, N'Lock Nut 21', N'LN-5818', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'e10a7b34-87f5-42cd-88b3-27a3d8e16b18', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(455, N'Lock Nut 3', N'LN-6320', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'aa5071eb-2145-4d08-9d33-b9d2ba9e1493', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(456, N'Lock Nut 14', N'LN-7161', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'1e96b03d-dc07-4a98-bc24-bf5b24c393e5', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(457, N'Lock Nut 15', N'LN-7162', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'ce04de2b-4eca-4203-a108-b7d92ff0e96e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(458, N'Lock Nut 4', N'LN-8320', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'41bd9389-8b22-4a35-9a2c-233d39ada7ea', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(459, N'Lock Nut 19', N'LN-9080', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'5986504b-22a0-4e74-a137-c7cf99a8216f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(460, N'Lock Nut 18', N'LN-9161', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'a420963f-92fd-4cd4-8531-6926e4162c41', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(461, N'Lock Ring', N'LR-2398', 0, 0, N'Silver', 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'aeca59da-b61c-4976-8316-97e14cd4eff1', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(462, N'Lower Head Race', N'LR-8520', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'dbb962bf-0603-4095-959b-5ba9c74fbd32', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(463, N'Lock Washer 4', N'LW-1000', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'a3ee3bc5-73c5-45f3-a952-9991d038dd9c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(464, N'Lock Washer 5', N'LW-1200', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'ecaed08d-2cf5-4d81-a4ed-8369e25af227', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(465, N'Lock Washer 10', N'LW-1201', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'a2212bab-af58-41a5-a659-a6141c8967ca', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(466, N'Lock Washer 6', N'LW-1400', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'9092f2e1-3637-4669-8565-55404a55750e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(467, N'Lock Washer 13', N'LW-3400', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'3cb31f4a-c61c-408c-be1e-48bee412e511', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(468, N'Lock Washer 8', N'LW-3800', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'900d26e6-21a0-427d-b43c-173f6dcb2045', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(469, N'Lock Washer 1', N'LW-4000', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'5402ea37-29df-47ff-9fc7-867d60594c48', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(470, N'Lock Washer 7', N'LW-5160', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'99357255-e66b-458c-ab2e-6f68ef5452d2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(471, N'Lock Washer 12', N'LW-5800', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'7bc9d58e-3e62-481f-8343-beb0883b3ecf', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(472, N'Lock Washer 2', N'LW-6000', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'5f201424-9e6a-4f8d-9c2c-30777e27d64f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(473, N'Lock Washer 9', N'LW-7160', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'f9426fb2-1e68-464e-bf32-615026e0249e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(474, N'Lock Washer 3', N'LW-8000', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'ac007b7f-73b7-4623-8150-02444c5ec023', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(475, N'Lock Washer 11', N'LW-9160', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'639d8448-b427-47b1-9e5b-0e5090a27632', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(476, N'Metal Angle', N'MA-7075', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'e876e239-7ec2-45c8-ba4b-b9ceacb379a6', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(477, N'Metal Bar 1', N'MB-2024', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'8b5429ce-7876-44b3-9332-baf78a238b36', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(478, N'Metal Bar 2', N'MB-6061', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'2a14f60e-3827-49ba-af13-466dbc30c5ba', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(479, N'Metal Plate 2', N'MP-2066', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'0773a2c9-f47f-429e-814a-25b2e08c128a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(480, N'Metal Plate 1', N'MP-2503', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'242389be-dde0-42a1-85d9-f99fdc981336', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(481, N'Metal Plate 3', N'MP-4960', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'8b7e90e5-7785-455e-bc7c-e962f18c6848', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(482, N'Metal Sheet 2', N'MS-0253', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'8bb96dfb-23aa-4877-9c5e-866bb18facc7', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(483, N'Metal Sheet 3', N'MS-1256', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'9074e00d-005b-450e-9c92-6667782e8108', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(484, N'Metal Sheet 7', N'MS-1981', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'a9539885-0cee-4aa0-9072-8db1d34a16db', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(485, N'Metal Sheet 4', N'MS-2259', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'3cb3cf7d-ab8e-44a3-b7e9-73149f5ec29f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(486, N'Metal Sheet 5', N'MS-2341', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'2a2c555d-328d-4299-bd83-591d0762df62', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(487, N'Metal Sheet 6', N'MS-2348', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'64844011-a1c3-4f8f-9caa-9c8d214ecc12', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(488, N'Metal Sheet 1', N'MS-6061', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'3b2febc6-c76c-4a56-9cf7-8af5b76e24ee', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(489, N'Metal Tread Plate', N'MT-1000', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'd2177b6c-3352-43f0-9a41-719754dd280c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(490, N'LL Nipple', N'NI-4127', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, N'L ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'88310f73-ab0a-41a2-8597-936f192b7d12', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(491, N'HL Nipple', N'NI-9522', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'88a7b897-6ff5-4ca2-b68a-6ea0e86f92b9', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(492, N'Paint - Black', N'PA-187B', 0, 0, NULL, 60, 45, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'df20e514-3d47-491b-9454-0911ec3f7d29', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(493, N'Paint - Red', N'PA-361R', 0, 0, NULL, 60, 45, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'4c568357-5d21-4ad4-bb85-bb5519b3b50c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(494, N'Paint - Silver', N'PA-529S', 0, 0, NULL, 60, 45, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'fa81e47d-7333-49c2-809b-308171ca2fb1', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(495, N'Paint - Blue', N'PA-632U', 0, 0, NULL, 60, 45, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'25a73761-ae90-49d3-8d1d-dd7858db4704', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(496, N'Paint - Yellow', N'PA-823Y', 0, 0, NULL, 60, 45, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'1c8adb43-9fe8-44a6-b949-8af33ce9486e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(497, N'Pinch Bolt', N'PB-6109', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'f1694c24-dfab-4c92-bc66-6e717db24ea8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(504, N'Cup-Shaped Race', N'RA-2345', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'874c800e-334d-4a3c-8d3a-1e872d5b2a1b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(505, N'Cone-Shaped Race', N'RA-7490', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'35ce3995-9dd2-40e2-98b8-275931ac2d76', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(506, N'Reflector', N'RF-9198', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'1c850499-38ed-4c2d-8665-7edb6a7ce93d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(507, N'LL Mountain Rim', N'RM-M464', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, N'G  ', CAST(435.00 AS Decimal(8, 2)), 0, NULL, N'L ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'b2cc7dfb-783d-4587-88c0-2712a538a5b2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(508, N'ML Mountain Rim', N'RM-M692', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, N'G  ', CAST(450.00 AS Decimal(8, 2)), 0, NULL, N'M ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'733fd04d-322f-44f5-beec-f326189d1ce6', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(509, N'HL Mountain Rim', N'RM-M823', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, N'G  ', CAST(400.00 AS Decimal(8, 2)), 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'9fa4a3b5-d396-48d4-adfc-b573bc4a800a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(510, N'LL Road Rim', N'RM-R436', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, N'G  ', CAST(445.00 AS Decimal(8, 2)), 0, NULL, N'L ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'c2770757-b258-4eec-a811-6856faf87437', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(511, N'ML Road Rim', N'RM-R600', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, N'G  ', CAST(450.00 AS Decimal(8, 2)), 0, NULL, N'M ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'80108059-0002-4253-a805-53a2324c33a4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(512, N'HL Road Rim', N'RM-R800', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, N'G  ', CAST(400.00 AS Decimal(8, 2)), 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'cd9b5c44-fb31-4e0f-9905-3b2086966cc5', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(513, N'Touring Rim', N'RM-T801', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, N'G  ', CAST(460.00 AS Decimal(8, 2)), 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'4852db13-308a-4893-aafa-390a0dfe9f12', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(514, N'LL Mountain Seat Assembly', N'SA-M198', 1, 0, NULL, 500, 375, 98.7700, 133.3400, NULL, NULL, NULL, NULL, 1, NULL, N'L ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'fcfc0a4f-4563-4e0b-bff4-5ddcfe3a9273', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(515, N'ML Mountain Seat Assembly', N'SA-M237', 1, 0, NULL, 500, 375, 108.9900, 147.1400, NULL, NULL, NULL, NULL, 1, NULL, N'M ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'd3c8ae4c-a1be-448d-bf58-6ecbf36afa0b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(516, N'HL Mountain Seat Assembly', N'SA-M687', 1, 0, NULL, 500, 375, 145.8700, 196.9200, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'9e18adab-b9c7-45b1-bd95-1805ec4f297d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(517, N'LL Road Seat Assembly', N'SA-R127', 1, 0, NULL, 500, 375, 98.7700, 133.3400, NULL, NULL, NULL, NULL, 1, NULL, N'L ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'f5a30b8d-f35b-43f2-83a0-f7f6b51f6241', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(518, N'ML Road Seat Assembly', N'SA-R430', 1, 0, NULL, 500, 375, 108.9900, 147.1400, NULL, NULL, NULL, NULL, 1, NULL, N'M ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'ad109395-fda9-4c2a-96f1-515ccde3d9f4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(519, N'HL Road Seat Assembly', N'SA-R522', 1, 0, NULL, 500, 375, 145.8700, 196.9200, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'7b52ee2a-7100-4a39-a0af-c89012da6ef8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(520, N'LL Touring Seat Assembly', N'SA-T467', 1, 0, NULL, 500, 375, 98.7700, 133.3400, NULL, NULL, NULL, NULL, 1, NULL, N'L ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'af3d83ba-4b8e-4072-817f-e6b095a1c879', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(521, N'ML Touring Seat Assembly', N'SA-T612', 1, 0, NULL, 500, 375, 108.9900, 147.1400, NULL, NULL, NULL, NULL, 1, NULL, N'M ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'85b9a3de-000c-4351-9494-05796689c216', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(522, N'HL Touring Seat Assembly', N'SA-T872', 1, 0, NULL, 500, 375, 145.8700, 196.9200, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'8c471bca-a735-4087-ad50-90ede0ac1a1b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(523, N'LL Spindle/Axle', N'SD-2342', 0, 0, NULL, 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, N'L ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'd2bd1f55-2cd4-4998-89fa-28ff2e28de2c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(524, N'HL Spindle/Axle', N'SD-9872', 0, 0, NULL, 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'6ce0661d-ba1f-4012-b785-55165b3b241a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(525, N'LL Shell', N'SH-4562', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, N'L ', NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'ae7bcda7-e836-4f68-9e61-745f27f9aa3e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(526, N'HL Shell', N'SH-9312', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'd215a3ae-aaf2-4cb0-9d20-3758aad078e2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
GO
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(527, N'Spokes', N'SK-9283', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'5aabb729-343b-4084-a235-ccb3da9f29e7', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(528, N'Seat Lug', N'SL-0931', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'4a898b1e-9a3b-4beb-9873-a7465934051a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(529, N'Stem', N'SM-9087', 1, 0, NULL, 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'1173306e-b616-4c4a-b715-4e0a483ba2b5', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(530, N'Seat Post', N'SP-2981', 0, 0, NULL, 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'9b4ceb84-4e84-43f3-b326-9b7f22905363', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(531, N'Steerer', N'SR-2098', 1, 0, NULL, 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'f3b140a1-b139-4bb5-b144-1b7cbbee6c9a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(532, N'Seat Stays', N'SS-2985', 1, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'20c2c611-dffc-49b5-99cf-d89bdd3a91ce', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(533, N'Seat Tube', N'ST-9828', 1, 0, NULL, 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'41f5388b-7253-4002-bcc6-b2a50920d11f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(534, N'Top Tube', N'TO-2301', 1, 0, NULL, 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'4c0bad8e-066b-46b8-bfe9-da61539606e8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(535, N'Tension Pulley', N'TP-0923', 0, 0, NULL, 800, 600, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'13df62b2-8a7b-47d5-9084-f1172c4779e4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(679, N'Rear Derailleur Cage', N'RC-0291', 0, 0, N'Silver', 500, 375, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'912b03ea-4447-48c8-85da-09b80ab26340', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(680, N'HL Road Frame - Black, 58', N'FR-R92B-58', 1, 1, N'Black', 500, 375, 1059.3100, 1431.5000, N'58', N'CM ', N'LB ', CAST(2.24 AS Decimal(8, 2)), 1, N'R ', N'H ', N'U ', 14, 6, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'43dd68d6-14a4-461f-9069-55309d90ea7e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(706, N'HL Road Frame - Red, 58', N'FR-R92R-58', 1, 1, N'Red', 500, 375, 1059.3100, 1431.5000, N'58', N'CM ', N'LB ', CAST(2.24 AS Decimal(8, 2)), 1, N'R ', N'H ', N'U ', 14, 6, CAST(N'2008-04-30T00:00:00.000' AS DateTime), NULL, NULL, N'9540ff17-2712-4c90-a3d1-8ce5568b2462', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(707, N'Sport-100 Helmet, Red', N'HL-U509-R', 0, 1, N'Red', 4, 3, 13.0863, 34.9900, NULL, NULL, NULL, NULL, 0, N'S ', NULL, NULL, 31, 33, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'2e1ef41a-c08a-4ff6-8ada-bde58b64a712', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(708, N'Sport-100 Helmet, Black', N'HL-U509', 0, 1, N'Black', 4, 3, 13.0863, 34.9900, NULL, NULL, NULL, NULL, 0, N'S ', NULL, NULL, 31, 33, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'a25a44fb-c2de-4268-958f-110b8d7621e2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(709, N'Mountain Bike Socks, M', N'SO-B909-M', 0, 1, N'White', 4, 3, 3.3963, 9.5000, N'M', NULL, NULL, NULL, 0, N'M ', NULL, N'U ', 23, 18, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'18f95f47-1540-4e02-8f1f-cc1bcb6828d0', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(710, N'Mountain Bike Socks, L', N'SO-B909-L', 0, 1, N'White', 4, 3, 3.3963, 9.5000, N'L', NULL, NULL, NULL, 0, N'M ', NULL, N'U ', 23, 18, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'161c035e-21b3-4e14-8e44-af508f35d80a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(711, N'Sport-100 Helmet, Blue', N'HL-U509-B', 0, 1, N'Blue', 4, 3, 13.0863, 34.9900, NULL, NULL, NULL, NULL, 0, N'S ', NULL, NULL, 31, 33, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'fd7c0858-4179-48c2-865b-abd5dfc7bc1d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(712, N'AWC Logo Cap', N'CA-1098', 0, 1, N'Multi', 4, 3, 6.9223, 8.9900, NULL, NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 19, 2, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'b9ede243-a6f4-4629-b1d4-ffe1aedc6de7', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(713, N'Long-Sleeve Logo Jersey, S', N'LJ-0192-S', 0, 1, N'Multi', 4, 3, 38.4923, 49.9900, N'S', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 21, 11, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'fd449c82-a259-4fae-8584-6ca0255faf68', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(714, N'Long-Sleeve Logo Jersey, M', N'LJ-0192-M', 0, 1, N'Multi', 4, 3, 38.4923, 49.9900, N'M', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 21, 11, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'6a290063-a0cf-432a-8110-2ea0fda14308', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(715, N'Long-Sleeve Logo Jersey, L', N'LJ-0192-L', 0, 1, N'Multi', 4, 3, 38.4923, 49.9900, N'L', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 21, 11, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'34cf5ef5-c077-4ea0-914a-084814d5cbd5', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(716, N'Long-Sleeve Logo Jersey, XL', N'LJ-0192-X', 0, 1, N'Multi', 4, 3, 38.4923, 49.9900, N'XL', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 21, 11, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'6ec47ec9-c041-4dda-b686-2125d539ce9b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(717, N'HL Road Frame - Red, 62', N'FR-R92R-62', 1, 1, N'Red', 500, 375, 868.6342, 1431.5000, N'62', N'CM ', N'LB ', CAST(2.30 AS Decimal(8, 2)), 1, N'R ', N'H ', N'U ', 14, 6, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'052e4f8b-0a2a-46b2-9f42-10febcfae416', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(718, N'HL Road Frame - Red, 44', N'FR-R92R-44', 1, 1, N'Red', 500, 375, 868.6342, 1431.5000, N'44', N'CM ', N'LB ', CAST(2.12 AS Decimal(8, 2)), 1, N'R ', N'H ', N'U ', 14, 6, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'a88d3b54-2cae-43f2-8c6e-ea1d97b46a7c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(719, N'HL Road Frame - Red, 48', N'FR-R92R-48', 1, 1, N'Red', 500, 375, 868.6342, 1431.5000, N'48', N'CM ', N'LB ', CAST(2.16 AS Decimal(8, 2)), 1, N'R ', N'H ', N'U ', 14, 6, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'07befc9a-7634-402b-b234-d7797733baaf', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(720, N'HL Road Frame - Red, 52', N'FR-R92R-52', 1, 1, N'Red', 500, 375, 868.6342, 1431.5000, N'52', N'CM ', N'LB ', CAST(2.20 AS Decimal(8, 2)), 1, N'R ', N'H ', N'U ', 14, 6, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'fcfea68f-310e-4e6e-9f99-bb17d011ebae', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(721, N'HL Road Frame - Red, 56', N'FR-R92R-56', 1, 1, N'Red', 500, 375, 868.6342, 1431.5000, N'56', N'CM ', N'LB ', CAST(2.24 AS Decimal(8, 2)), 1, N'R ', N'H ', N'U ', 14, 6, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'56c85873-4993-41b4-8096-1067cfd7e4bd', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(722, N'LL Road Frame - Black, 58', N'FR-R38B-58', 1, 1, N'Black', 500, 375, 204.6251, 337.2200, N'58', N'CM ', N'LB ', CAST(2.46 AS Decimal(8, 2)), 1, N'R ', N'L ', N'U ', 14, 9, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'2140f256-f705-4d67-975d-32de03265838', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(723, N'LL Road Frame - Black, 60', N'FR-R38B-60', 1, 1, N'Black', 500, 375, 204.6251, 337.2200, N'60', N'CM ', N'LB ', CAST(2.48 AS Decimal(8, 2)), 1, N'R ', N'L ', N'U ', 14, 9, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'aa95e2a5-e7c4-4b74-b1ea-b52ee3b51537', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(724, N'LL Road Frame - Black, 62', N'FR-R38B-62', 1, 1, N'Black', 500, 375, 204.6251, 337.2200, N'62', N'CM ', N'LB ', CAST(2.50 AS Decimal(8, 2)), 1, N'R ', N'L ', N'U ', 14, 9, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'5247be33-50bf-4527-8a30-a39aae500a8e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(725, N'LL Road Frame - Red, 44', N'FR-R38R-44', 1, 1, N'Red', 500, 375, 187.1571, 337.2200, N'44', N'CM ', N'LB ', CAST(2.32 AS Decimal(8, 2)), 1, N'R ', N'L ', N'U ', 14, 9, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'137d319d-44ad-42b2-ab61-60b9ce52b5f2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(726, N'LL Road Frame - Red, 48', N'FR-R38R-48', 1, 1, N'Red', 500, 375, 187.1571, 337.2200, N'48', N'CM ', N'LB ', CAST(2.36 AS Decimal(8, 2)), 1, N'R ', N'L ', N'U ', 14, 9, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'35213547-275f-4767-805d-c8a4b8e13745', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(727, N'LL Road Frame - Red, 52', N'FR-R38R-52', 1, 1, N'Red', 500, 375, 187.1571, 337.2200, N'52', N'CM ', N'LB ', CAST(2.40 AS Decimal(8, 2)), 1, N'R ', N'L ', N'U ', 14, 9, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'c455e0b3-d716-419d-abf0-7e03efdd2e26', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(728, N'LL Road Frame - Red, 58', N'FR-R38R-58', 1, 1, N'Red', 500, 375, 187.1571, 337.2200, N'58', N'CM ', N'LB ', CAST(2.46 AS Decimal(8, 2)), 1, N'R ', N'L ', N'U ', 14, 9, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'799a56ff-5ad2-41b3-bfac-528b477ad129', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(729, N'LL Road Frame - Red, 60', N'FR-R38R-60', 1, 1, N'Red', 500, 375, 187.1571, 337.2200, N'60', N'CM ', N'LB ', CAST(2.48 AS Decimal(8, 2)), 1, N'R ', N'L ', N'U ', 14, 9, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'1784bb14-d1f5-4b24-92da-9127ad179302', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(730, N'LL Road Frame - Red, 62', N'FR-R38R-62', 1, 1, N'Red', 500, 375, 187.1571, 337.2200, N'62', N'CM ', N'LB ', CAST(2.50 AS Decimal(8, 2)), 1, N'R ', N'L ', N'U ', 14, 9, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'7e73aa1f-8569-4d87-9f80-ac2e513e0803', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(731, N'ML Road Frame - Red, 44', N'FR-R72R-44', 1, 1, N'Red', 500, 375, 352.1394, 594.8300, N'44', N'CM ', N'LB ', CAST(2.22 AS Decimal(8, 2)), 1, N'R ', N'M ', N'U ', 14, 16, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'459e041c-3234-409e-b4cd-81728f8a2398', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(732, N'ML Road Frame - Red, 48', N'FR-R72R-48', 1, 1, N'Red', 500, 375, 352.1394, 594.8300, N'48', N'CM ', N'LB ', CAST(2.26 AS Decimal(8, 2)), 1, N'R ', N'M ', N'U ', 14, 16, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'b673189c-c042-413b-8194-73bc44b0492c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(733, N'ML Road Frame - Red, 52', N'FR-R72R-52', 1, 1, N'Red', 500, 375, 352.1394, 594.8300, N'52', N'CM ', N'LB ', CAST(2.30 AS Decimal(8, 2)), 1, N'R ', N'M ', N'U ', 14, 16, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'55ea276b-82d8-4ccb-9ab1-9b1b75b15a83', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(734, N'ML Road Frame - Red, 58', N'FR-R72R-58', 1, 1, N'Red', 500, 375, 352.1394, 594.8300, N'58', N'CM ', N'LB ', CAST(2.36 AS Decimal(8, 2)), 1, N'R ', N'M ', N'U ', 14, 16, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'df4ce1e2-ba9a-4657-b999-ccfa6c55d9c1', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(735, N'ML Road Frame - Red, 60', N'FR-R72R-60', 1, 1, N'Red', 500, 375, 352.1394, 594.8300, N'60', N'CM ', N'LB ', CAST(2.38 AS Decimal(8, 2)), 1, N'R ', N'M ', N'U ', 14, 16, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'b2e48e8c-63a5-469a-ba4c-4f5ebb1104a4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(736, N'LL Road Frame - Black, 44', N'FR-R38B-44', 1, 1, N'Black', 500, 375, 204.6251, 337.2200, N'44', N'CM ', N'LB ', CAST(2.32 AS Decimal(8, 2)), 1, N'R ', N'L ', N'U ', 14, 9, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'c9967889-f490-4a66-943a-bce432e938d8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(737, N'LL Road Frame - Black, 48', N'FR-R38B-48', 1, 1, N'Black', 500, 375, 204.6251, 337.2200, N'48', N'CM ', N'LB ', CAST(2.36 AS Decimal(8, 2)), 1, N'R ', N'L ', N'U ', 14, 9, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'3b5f29b6-a441-4ff7-a0fa-fad10e2ceb4c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(738, N'LL Road Frame - Black, 52', N'FR-R38B-52', 1, 1, N'Black', 500, 375, 204.6251, 337.2200, N'52', N'CM ', N'LB ', CAST(2.40 AS Decimal(8, 2)), 1, N'R ', N'L ', N'U ', 14, 9, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'18fc5d72-a012-4dc7-bb35-0d01a84d0219', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(739, N'HL Mountain Frame - Silver, 42', N'FR-M94S-42', 1, 1, N'Silver', 500, 375, 747.2002, 1364.5000, N'42', N'CM ', N'LB ', CAST(2.72 AS Decimal(8, 2)), 1, N'M ', N'H ', N'U ', 12, 5, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'8ae32663-8d6f-457d-8343-5b181fec43a7', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(740, N'HL Mountain Frame - Silver, 44', N'FR-M94S-44', 1, 1, N'Silver', 500, 375, 706.8110, 1364.5000, N'44', N'CM ', N'LB ', CAST(2.76 AS Decimal(8, 2)), 1, N'M ', N'H ', N'U ', 12, 5, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'1909c60c-c490-411d-b3e6-12ddd7832482', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(741, N'HL Mountain Frame - Silver, 48', N'FR-M94S-52', 1, 1, N'Silver', 500, 375, 706.8110, 1364.5000, N'48', N'CM ', N'LB ', CAST(2.80 AS Decimal(8, 2)), 1, N'M ', N'H ', N'U ', 12, 5, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'b181ec1f-ca20-4724-b2eb-15f3e455142e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(742, N'HL Mountain Frame - Silver, 46', N'FR-M94S-46', 1, 1, N'Silver', 500, 375, 747.2002, 1364.5000, N'46', N'CM ', N'LB ', CAST(2.84 AS Decimal(8, 2)), 1, N'M ', N'H ', N'U ', 12, 5, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'a189d86e-d923-4336-b13d-a5db6f426540', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(743, N'HL Mountain Frame - Black, 42', N'FR-M94B-42', 1, 1, N'Black', 500, 375, 739.0410, 1349.6000, N'42', N'CM ', N'LB ', CAST(2.72 AS Decimal(8, 2)), 1, N'M ', N'H ', N'U ', 12, 5, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'27db28f8-5ab8-4091-b94e-6f1b2d8e7ab0', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(744, N'HL Mountain Frame - Black, 44', N'FR-M94B-44', 1, 1, N'Black', 500, 375, 699.0928, 1349.6000, N'44', N'CM ', N'LB ', CAST(2.76 AS Decimal(8, 2)), 1, N'M ', N'H ', N'U ', 12, 5, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'cb443286-6b25-409f-a10b-1ad4eeb4bd4e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(745, N'HL Mountain Frame - Black, 48', N'FR-M94B-48', 1, 1, N'Black', 500, 375, 699.0928, 1349.6000, N'48', N'CM ', N'LB ', CAST(2.80 AS Decimal(8, 2)), 1, N'M ', N'H ', N'U ', 12, 5, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'1fee0573-6676-432d-8d6d-41ba9faa5865', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(746, N'HL Mountain Frame - Black, 46', N'FR-M94B-46', 1, 1, N'Black', 500, 375, 739.0410, 1349.6000, N'46', N'CM ', N'LB ', CAST(2.84 AS Decimal(8, 2)), 1, N'M ', N'H ', N'U ', 12, 5, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'50abebcb-451e-42b9-8dbb-e5c4a34470e9', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(747, N'HL Mountain Frame - Black, 38', N'FR-M94B-38', 1, 1, N'Black', 500, 375, 739.0410, 1349.6000, N'38', N'CM ', N'LB ', CAST(2.68 AS Decimal(8, 2)), 2, N'M ', N'H ', N'U ', 12, 5, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'0c548577-3171-4ce2-b9a0-1ed526849de8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(748, N'HL Mountain Frame - Silver, 38', N'FR-M94S-38', 1, 1, N'Silver', 500, 375, 747.2002, 1364.5000, N'38', N'CM ', N'LB ', CAST(2.68 AS Decimal(8, 2)), 2, N'M ', N'H ', N'U ', 12, 5, CAST(N'2011-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'f246acaa-a80b-40ec-9208-02edef885129', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(749, N'Road-150 Red, 62', N'BK-R93R-62', 1, 1, N'Red', 100, 75, 2171.2942, 3578.2700, N'62', N'CM ', N'LB ', CAST(15.00 AS Decimal(8, 2)), 4, N'R ', N'H ', N'U ', 2, 25, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'bc621e1f-2553-4fdc-b22e-5e44a9003569', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(750, N'Road-150 Red, 44', N'BK-R93R-44', 1, 1, N'Red', 100, 75, 2171.2942, 3578.2700, N'44', N'CM ', N'LB ', CAST(13.77 AS Decimal(8, 2)), 4, N'R ', N'H ', N'U ', 2, 25, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'c19e1136-5da4-4b40-8758-54a85d7ea494', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(751, N'Road-150 Red, 48', N'BK-R93R-48', 1, 1, N'Red', 100, 75, 2171.2942, 3578.2700, N'48', N'CM ', N'LB ', CAST(14.13 AS Decimal(8, 2)), 4, N'R ', N'H ', N'U ', 2, 25, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'd10b7cc1-455e-435b-a08f-ec5b1c5776e9', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(752, N'Road-150 Red, 52', N'BK-R93R-52', 1, 1, N'Red', 100, 75, 2171.2942, 3578.2700, N'52', N'CM ', N'LB ', CAST(14.42 AS Decimal(8, 2)), 4, N'R ', N'H ', N'U ', 2, 25, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'5e085ba0-3cd5-487f-85bb-79ed1c701f23', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(753, N'Road-150 Red, 56', N'BK-R93R-56', 1, 1, N'Red', 100, 75, 2171.2942, 3578.2700, N'56', N'CM ', N'LB ', CAST(14.68 AS Decimal(8, 2)), 4, N'R ', N'H ', N'U ', 2, 25, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'30819b88-f0d3-4e7a-8105-19f6fac2cefb', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(754, N'Road-450 Red, 58', N'BK-R68R-58', 1, 1, N'Red', 100, 75, 884.7083, 1457.9900, N'58', N'CM ', N'LB ', CAST(17.79 AS Decimal(8, 2)), 4, N'R ', N'M ', N'U ', 2, 28, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'40d5effa-c0c4-479f-af66-5f1bf8ed3bfb', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(755, N'Road-450 Red, 60', N'BK-R68R-60', 1, 1, N'Red', 100, 75, 884.7083, 1457.9900, N'60', N'CM ', N'LB ', CAST(17.90 AS Decimal(8, 2)), 4, N'R ', N'M ', N'U ', 2, 28, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'181a90cb-3678-490e-8418-78f73fb5343d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(756, N'Road-450 Red, 44', N'BK-R68R-44', 1, 1, N'Red', 100, 75, 884.7083, 1457.9900, N'44', N'CM ', N'LB ', CAST(16.77 AS Decimal(8, 2)), 4, N'R ', N'M ', N'U ', 2, 28, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'f8b5e26a-3d33-4e39-b500-cc21a133062e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(757, N'Road-450 Red, 48', N'BK-R68R-48', 1, 1, N'Red', 100, 75, 884.7083, 1457.9900, N'48', N'CM ', N'LB ', CAST(17.13 AS Decimal(8, 2)), 4, N'R ', N'M ', N'U ', 2, 28, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'c72c9978-0b04-46b3-9de6-948feca1c86e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(758, N'Road-450 Red, 52', N'BK-R68R-52', 1, 1, N'Red', 100, 75, 884.7083, 1457.9900, N'52', N'CM ', N'LB ', CAST(17.42 AS Decimal(8, 2)), 4, N'R ', N'M ', N'U ', 2, 28, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'040a4b7d-4060-4507-aa92-7508b434797e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(759, N'Road-650 Red, 58', N'BK-R50R-58', 1, 1, N'Red', 100, 75, 486.7066, 782.9900, N'58', N'CM ', N'LB ', CAST(19.79 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 30, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'6711d6bc-664f-4890-9f69-af1de321d055', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(760, N'Road-650 Red, 60', N'BK-R50R-60', 1, 1, N'Red', 100, 75, 486.7066, 782.9900, N'60', N'CM ', N'LB ', CAST(19.90 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 30, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'664867e5-4ab3-4783-96f9-42efde92f49b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(761, N'Road-650 Red, 62', N'BK-R50R-62', 1, 1, N'Red', 100, 75, 486.7066, 782.9900, N'62', N'CM ', N'LB ', CAST(20.00 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 30, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'1da14e09-6d71-4e2a-9ee9-1bdfdfd8a109', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(762, N'Road-650 Red, 44', N'BK-R50R-44', 1, 1, N'Red', 100, 75, 486.7066, 782.9900, N'44', N'CM ', N'LB ', CAST(18.77 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 30, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'f247aaae-12e3-4048-a37b-cce4a8999e81', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(763, N'Road-650 Red, 48', N'BK-R50R-48', 1, 1, N'Red', 100, 75, 486.7066, 782.9900, N'48', N'CM ', N'LB ', CAST(19.13 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 30, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'3da5fa6e-9e0f-4896-ac10-948c27f4eb79', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(764, N'Road-650 Red, 52', N'BK-R50R-52', 1, 1, N'Red', 100, 75, 486.7066, 782.9900, N'52', N'CM ', N'LB ', CAST(19.42 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 30, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'07cfe1ea-8a37-4d2a-835f-bc8d37e564af', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(765, N'Road-650 Black, 58', N'BK-R50B-58', 1, 1, N'Black', 100, 75, 486.7066, 782.9900, N'58', N'CM ', N'LB ', CAST(19.79 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 30, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'74645b12-3ce9-49a6-bd96-2cd814b37420', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(766, N'Road-650 Black, 60', N'BK-R50B-60', 1, 1, N'Black', 100, 75, 486.7066, 782.9900, N'60', N'CM ', N'LB ', CAST(19.90 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 30, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'a2db196d-6640-49ea-a84f-2e87ca6f50c6', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(767, N'Road-650 Black, 62', N'BK-R50B-62', 1, 1, N'Black', 100, 75, 486.7066, 782.9900, N'62', N'CM ', N'LB ', CAST(20.00 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 30, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'c82a8309-63d3-4c0c-ad71-e91272397095', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(768, N'Road-650 Black, 44', N'BK-R50B-44', 1, 1, N'Black', 100, 75, 486.7066, 782.9900, N'44', N'CM ', N'LB ', CAST(18.77 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 30, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'11d563ac-115c-4f0d-a1e5-e946eee8b38b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(769, N'Road-650 Black, 48', N'BK-R50B-48', 1, 1, N'Black', 100, 75, 486.7066, 782.9900, N'48', N'CM ', N'LB ', CAST(19.13 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 30, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'a7e2179e-137c-497e-a5e6-c9ea64935fb0', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(770, N'Road-650 Black, 52', N'BK-R50B-52', 1, 1, N'Black', 100, 75, 486.7066, 782.9900, N'52', N'CM ', N'LB ', CAST(19.42 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 30, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'136e2865-e0da-4624-963a-31349279ab1a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(771, N'Mountain-100 Silver, 38', N'BK-M82S-38', 1, 1, N'Silver', 100, 75, 1912.1544, 3399.9900, N'38', N'CM ', N'LB ', CAST(20.35 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 19, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'ca74b54e-fc30-4464-8b83-019bfd1b2dbb', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(772, N'Mountain-100 Silver, 42', N'BK-M82S-42', 1, 1, N'Silver', 100, 75, 1912.1544, 3399.9900, N'42', N'CM ', N'LB ', CAST(20.77 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 19, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'bbfff5a5-4bdc-49a9-a5ad-7584adffe808', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(773, N'Mountain-100 Silver, 44', N'BK-M82S-44', 1, 1, N'Silver', 100, 75, 1912.1544, 3399.9900, N'44', N'CM ', N'LB ', CAST(21.13 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 19, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'155fd77e-d6d6-43f0-8a5b-4a8305eb45cd', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(774, N'Mountain-100 Silver, 48', N'BK-M82S-48', 1, 1, N'Silver', 100, 75, 1912.1544, 3399.9900, N'48', N'CM ', N'LB ', CAST(21.42 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 19, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'ba5551df-c9ee-4b43-b3ca-8c19d0f9384d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(775, N'Mountain-100 Black, 38', N'BK-M82B-38', 1, 1, N'Black', 100, 75, 1898.0944, 3374.9900, N'38', N'CM ', N'LB ', CAST(20.35 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 19, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'dea33347-fcd3-4346-aa0f-068cd6b3ad06', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(776, N'Mountain-100 Black, 42', N'BK-M82B-42', 1, 1, N'Black', 100, 75, 1898.0944, 3374.9900, N'42', N'CM ', N'LB ', CAST(20.77 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 19, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'02935111-a546-4c6d-941f-be12d42c158e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(777, N'Mountain-100 Black, 44', N'BK-M82B-44', 1, 1, N'Black', 100, 75, 1898.0944, 3374.9900, N'44', N'CM ', N'LB ', CAST(21.13 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 19, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'7920bc3b-8fd4-4610-93d2-e693a66b6474', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(778, N'Mountain-100 Black, 48', N'BK-M82B-48', 1, 1, N'Black', 100, 75, 1898.0944, 3374.9900, N'48', N'CM ', N'LB ', CAST(21.42 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 19, CAST(N'2011-05-31T00:00:00.000' AS DateTime), CAST(N'2012-05-29T00:00:00.000' AS DateTime), NULL, N'1b486300-7e64-4c5d-a9ba-a8368e20c5a0', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(779, N'Mountain-200 Silver, 38', N'BK-M68S-38', 1, 1, N'Silver', 100, 75, 1265.6195, 2319.9900, N'38', N'CM ', N'LB ', CAST(23.35 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 20, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'3a45d835-abae-4806-ac03-c53abcd3b974', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(780, N'Mountain-200 Silver, 42', N'BK-M68S-42', 1, 1, N'Silver', 100, 75, 1265.6195, 2319.9900, N'42', N'CM ', N'LB ', CAST(23.77 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 20, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'ce4849b4-56e6-4b50-808b-9bde67cc4704', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(781, N'Mountain-200 Silver, 46', N'BK-M68S-46', 1, 1, N'Silver', 100, 75, 1265.6195, 2319.9900, N'46', N'CM ', N'LB ', CAST(24.13 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 20, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'20799030-420c-496a-9922-09189c2b457e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(782, N'Mountain-200 Black, 38', N'BK-M68B-38', 1, 1, N'Black', 100, 75, 1251.9813, 2294.9900, N'38', N'CM ', N'LB ', CAST(23.35 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 20, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'82cb8f9b-b8bb-4841-98d3-bcdb807c4dd8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(783, N'Mountain-200 Black, 42', N'BK-M68B-42', 1, 1, N'Black', 100, 75, 1251.9813, 2294.9900, N'42', N'CM ', N'LB ', CAST(23.77 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 20, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'2b0af5b9-7571-4621-b760-47df599f9650', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(784, N'Mountain-200 Black, 46', N'BK-M68B-46', 1, 1, N'Black', 100, 75, 1251.9813, 2294.9900, N'46', N'CM ', N'LB ', CAST(24.13 AS Decimal(8, 2)), 4, N'M ', N'H ', N'U ', 1, 20, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'33f42284-e216-4b98-ba48-b4ee18a01fa0', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(785, N'Mountain-300 Black, 38', N'BK-M47B-38', 1, 1, N'Black', 100, 75, 598.4354, 1079.9900, N'38', N'CM ', N'LB ', CAST(25.35 AS Decimal(8, 2)), 4, N'M ', N'M ', N'U ', 1, 21, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'f06c2cbf-0901-4c08-80ed-fb4e87171b3b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(786, N'Mountain-300 Black, 40', N'BK-M47B-40', 1, 1, N'Black', 100, 75, 598.4354, 1079.9900, N'40', N'CM ', N'LB ', CAST(25.77 AS Decimal(8, 2)), 4, N'M ', N'M ', N'U ', 1, 21, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'580d4322-be03-4c91-83d2-ee33ec6008ab', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(787, N'Mountain-300 Black, 44', N'BK-M47B-44', 1, 1, N'Black', 100, 75, 598.4354, 1079.9900, N'44', N'CM ', N'LB ', CAST(26.13 AS Decimal(8, 2)), 4, N'M ', N'M ', N'U ', 1, 21, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'07c2a548-0452-47b4-9dce-6edb0a30c85e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(788, N'Mountain-300 Black, 48', N'BK-M47B-48', 1, 1, N'Black', 100, 75, 598.4354, 1079.9900, N'48', N'CM ', N'LB ', CAST(26.42 AS Decimal(8, 2)), 4, N'M ', N'M ', N'U ', 1, 21, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'16078dbe-388d-4c18-aa8f-0c8f48035468', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(789, N'Road-250 Red, 44', N'BK-R89R-44', 1, 1, N'Red', 100, 75, 1518.7864, 2443.3500, N'44', N'CM ', N'LB ', CAST(14.77 AS Decimal(8, 2)), 4, N'R ', N'H ', N'U ', 2, 26, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'0aa71ad6-afaf-43c6-9745-35d815b50a5b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(790, N'Road-250 Red, 48', N'BK-R89R-48', 1, 1, N'Red', 100, 75, 1518.7864, 2443.3500, N'48', N'CM ', N'LB ', CAST(15.13 AS Decimal(8, 2)), 4, N'R ', N'H ', N'U ', 2, 26, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'115ddade-70e3-43f9-80dc-638daea271c4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(791, N'Road-250 Red, 52', N'BK-R89R-52', 1, 1, N'Red', 100, 75, 1518.7864, 2443.3500, N'52', N'CM ', N'LB ', CAST(15.42 AS Decimal(8, 2)), 4, N'R ', N'H ', N'U ', 2, 26, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'c9fd1df4-9512-420a-b379-067108033b75', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(792, N'Road-250 Red, 58', N'BK-R89R-58', 1, 1, N'Red', 100, 75, 1554.9479, 2443.3500, N'58', N'CM ', N'LB ', CAST(15.79 AS Decimal(8, 2)), 4, N'R ', N'H ', N'U ', 2, 26, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'df629c11-8d8b-4774-9d52-ecb64dc95212', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(793, N'Road-250 Black, 44', N'BK-R89B-44', 1, 1, N'Black', 100, 75, 1554.9479, 2443.3500, N'44', N'CM ', N'LB ', CAST(14.77 AS Decimal(8, 2)), 4, N'R ', N'H ', N'U ', 2, 26, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'1ff419b5-52af-4f7e-aeae-4fec5e99de35', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(794, N'Road-250 Black, 48', N'BK-R89B-48', 1, 1, N'Black', 100, 75, 1554.9479, 2443.3500, N'48', N'CM ', N'LB ', CAST(15.13 AS Decimal(8, 2)), 4, N'R ', N'H ', N'U ', 2, 26, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'9d165ddf-8f5d-41c7-9bb8-13f41a3d1f62', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
GO
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(795, N'Road-250 Black, 52', N'BK-R89B-52', 1, 1, N'Black', 100, 75, 1554.9479, 2443.3500, N'52', N'CM ', N'LB ', CAST(15.42 AS Decimal(8, 2)), 4, N'R ', N'H ', N'U ', 2, 26, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'74fe3957-cbc3-450a-ab92-849bd13530e2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(796, N'Road-250 Black, 58', N'BK-R89B-58', 1, 1, N'Black', 100, 75, 1554.9479, 2443.3500, N'58', N'CM ', N'LB ', CAST(15.68 AS Decimal(8, 2)), 4, N'R ', N'H ', N'U ', 2, 26, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'1c530fe8-a169-4adc-b3dc-b11a48245e63', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(797, N'Road-550-W Yellow, 38', N'BK-R64Y-38', 1, 1, N'Yellow', 100, 75, 713.0798, 1120.4900, N'38', N'CM ', N'LB ', CAST(17.35 AS Decimal(8, 2)), 4, N'R ', N'M ', N'W ', 2, 29, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'aad81532-a572-49a5-83c3-dfa9e3b4fea6', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(798, N'Road-550-W Yellow, 40', N'BK-R64Y-40', 1, 1, N'Yellow', 100, 75, 713.0798, 1120.4900, N'40', N'CM ', N'LB ', CAST(17.77 AS Decimal(8, 2)), 4, N'R ', N'M ', N'W ', 2, 29, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'a35a1c35-c128-4697-951e-4199062e78f3', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(799, N'Road-550-W Yellow, 42', N'BK-R64Y-42', 1, 1, N'Yellow', 100, 75, 713.0798, 1120.4900, N'42', N'CM ', N'LB ', CAST(18.13 AS Decimal(8, 2)), 4, N'R ', N'M ', N'W ', 2, 29, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'a359ab09-16f2-4726-a60f-0dfdb1c9527e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(800, N'Road-550-W Yellow, 44', N'BK-R64Y-44', 1, 1, N'Yellow', 100, 75, 713.0798, 1120.4900, N'44', N'CM ', N'LB ', CAST(18.42 AS Decimal(8, 2)), 4, N'R ', N'M ', N'W ', 2, 29, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'0a7028fb-ff06-4d38-aaa1-b64816278165', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(801, N'Road-550-W Yellow, 48', N'BK-R64Y-48', 1, 1, N'Yellow', 100, 75, 713.0798, 1120.4900, N'48', N'CM ', N'LB ', CAST(18.68 AS Decimal(8, 2)), 4, N'R ', N'M ', N'W ', 2, 29, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'c90cc877-804c-4ce7-afc3-4c8791a13dfb', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(802, N'LL Fork', N'FK-1639', 1, 1, NULL, 500, 375, 65.8097, 148.2200, NULL, NULL, NULL, NULL, 1, NULL, N'L ', NULL, 10, 104, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'fb8502be-07eb-4134-ab06-c3a9959a52ae', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(803, N'ML Fork', N'FK-5136', 1, 1, NULL, 500, 375, 77.9176, 175.4900, NULL, NULL, NULL, NULL, 1, NULL, N'M ', NULL, 10, 105, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'f5fa4e2f-b976-48a4-bf79-85632f697d2e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(804, N'HL Fork', N'FK-9939', 1, 1, NULL, 500, 375, 101.8936, 229.4900, NULL, NULL, NULL, NULL, 1, NULL, N'H ', NULL, 10, 106, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'553229b3-1ad9-4a71-a21c-2af4332cfce9', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(805, N'LL Headset', N'HS-0296', 1, 1, NULL, 500, 375, 15.1848, 34.2000, NULL, NULL, NULL, NULL, 1, NULL, N'L ', NULL, 11, 59, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'bb6bd7b3-a34d-4d64-822e-781fa6838e19', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(806, N'ML Headset', N'HS-2451', 1, 1, NULL, 500, 375, 45.4168, 102.2900, NULL, NULL, NULL, NULL, 1, NULL, N'M ', NULL, 11, 60, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'23b5d52b-8c29-4059-b899-75c53b5ee2e6', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(807, N'HL Headset', N'HS-3479', 1, 1, NULL, 500, 375, 55.3801, 124.7300, NULL, NULL, NULL, NULL, 1, NULL, N'H ', NULL, 11, 61, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'12e4d5e8-79ed-4bcb-a532-6275d1a93417', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(808, N'LL Mountain Handlebars', N'HB-M243', 1, 1, NULL, 500, 375, 19.7758, 44.5400, NULL, NULL, NULL, NULL, 1, N'M ', N'L ', NULL, 4, 52, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'b59b7bf2-7afc-4a74-b063-f942f1e0da19', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(809, N'ML Mountain Handlebars', N'HB-M763', 1, 1, NULL, 500, 375, 27.4925, 61.9200, NULL, NULL, NULL, NULL, 1, N'M ', N'M ', NULL, 4, 54, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'ae6020df-d9c9-4d34-9795-1f80e6bbf5a5', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(810, N'HL Mountain Handlebars', N'HB-M918', 1, 1, NULL, 500, 375, 53.3999, 120.2700, NULL, NULL, NULL, NULL, 1, N'M ', N'H ', NULL, 4, 55, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'6aa0f921-0f09-4f99-8d3c-335946873553', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(811, N'LL Road Handlebars', N'HB-R504', 1, 1, NULL, 500, 375, 19.7758, 44.5400, NULL, NULL, NULL, NULL, 1, N'R ', N'L ', NULL, 4, 56, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'acdae407-b40e-435e-8e84-1bfc33013e81', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(812, N'ML Road Handlebars', N'HB-R720', 1, 1, NULL, 500, 375, 27.4925, 61.9200, NULL, NULL, NULL, NULL, 1, N'R ', N'M ', NULL, 4, 57, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'33fa1a03-38d6-405e-be9b-eea92f3d204f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(813, N'HL Road Handlebars', N'HB-R956', 1, 1, NULL, 500, 375, 53.3999, 120.2700, NULL, NULL, NULL, NULL, 1, N'R ', N'H ', NULL, 4, 58, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'5c5327b9-ad2e-4c33-8d74-edf49e0c2dd8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(814, N'ML Mountain Frame - Black, 38', N'FR-M63B-38', 1, 1, N'Black', 500, 375, 185.8193, 348.7600, N'38', N'CM ', N'LB ', CAST(2.73 AS Decimal(8, 2)), 2, N'M ', N'M ', N'U ', 12, 15, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'0d879312-a7d3-441d-9d23-b6550bab3814', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(815, N'LL Mountain Front Wheel', N'FW-M423', 1, 1, N'Black', 500, 375, 26.9708, 60.7450, NULL, NULL, NULL, NULL, 1, N'M ', N'L ', NULL, 17, 42, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'd7b1d161-182e-44f6-a9ff-9c1eba76613b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(816, N'ML Mountain Front Wheel', N'FW-M762', 1, 1, N'Black', 500, 375, 92.8071, 209.0250, NULL, NULL, NULL, NULL, 1, N'M ', N'M ', NULL, 17, 45, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'5e3e5033-9a77-4dca-8b7f-dfed78efa08a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(817, N'HL Mountain Front Wheel', N'FW-M928', 1, 1, N'Black', 500, 375, 133.2955, 300.2150, NULL, NULL, NULL, NULL, 1, N'M ', N'H ', NULL, 17, 46, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'3c8ffff6-a8dc-45a3-963b-a6284ced7596', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(818, N'LL Road Front Wheel', N'FW-R623', 1, 1, N'Black', 500, 375, 37.9909, 85.5650, NULL, NULL, N'G  ', CAST(900.00 AS Decimal(8, 2)), 1, N'R ', N'L ', NULL, 17, 49, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'9e66de78-decb-438a-b9a9-023c773c60a2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(819, N'ML Road Front Wheel', N'FW-R762', 1, 1, N'Black', 500, 375, 110.2829, 248.3850, NULL, NULL, N'G  ', CAST(850.00 AS Decimal(8, 2)), 1, N'R ', N'M ', NULL, 17, 50, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'6ea94fbf-b9aa-43fc-84e8-91d508dde751', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(820, N'HL Road Front Wheel', N'FW-R820', 1, 1, N'Black', 500, 375, 146.5466, 330.0600, NULL, NULL, N'G  ', CAST(650.00 AS Decimal(8, 2)), 1, N'R ', N'H ', NULL, 17, 51, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'727a3cd5-8d40-4884-a7e4-dfd3ffdeb164', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(821, N'Touring Front Wheel', N'FW-T905', 1, 1, N'Black', 500, 375, 96.7964, 218.0100, NULL, NULL, NULL, NULL, 1, N'T ', NULL, NULL, 17, 44, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'8d1cdb07-4fa1-4ac1-840f-a16c3dca5009', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(822, N'ML Road Frame-W - Yellow, 38', N'FR-R72Y-38', 1, 1, N'Yellow', 500, 375, 360.9428, 594.8300, N'38', N'CM ', N'LB ', CAST(2.18 AS Decimal(8, 2)), 2, N'R ', N'M ', N'W ', 14, 17, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'22976fa7-0ad0-40f9-b4f9-ba10279ea1a3', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(823, N'LL Mountain Rear Wheel', N'RW-M423', 1, 1, N'Black', 500, 375, 38.9588, 87.7450, NULL, NULL, NULL, NULL, 1, N'M ', N'L ', NULL, 17, 123, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'e6c39f58-995f-4786-a309-df3812d8b30f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(824, N'ML Mountain Rear Wheel', N'RW-M762', 1, 1, N'Black', 500, 375, 104.7951, 236.0250, NULL, NULL, NULL, NULL, 1, N'M ', N'M ', NULL, 17, 124, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'b2f7cf9b-a7bf-49ab-9cca-9f6e791cd693', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(825, N'HL Mountain Rear Wheel', N'RW-M928', 1, 1, N'Black', 500, 375, 145.2835, 327.2150, NULL, NULL, NULL, NULL, 1, N'M ', N'H ', NULL, 17, 125, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'35d02edc-1120-41fb-b5df-8655a93b3353', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(826, N'LL Road Rear Wheel', N'RW-R623', 1, 1, N'Black', 500, 375, 49.9789, 112.5650, NULL, NULL, N'G  ', CAST(1050.00 AS Decimal(8, 2)), 1, N'R ', N'L ', NULL, 17, 126, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'78d01117-8dcd-465f-9dc7-94a2cdc35582', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(827, N'ML Road Rear Wheel', N'RW-R762', 1, 1, N'Black', 500, 375, 122.2709, 275.3850, NULL, NULL, N'G  ', CAST(1000.00 AS Decimal(8, 2)), 1, N'R ', N'M ', NULL, 17, 77, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'cf739f9a-0af0-4810-b229-c431a31d7779', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(828, N'HL Road Rear Wheel', N'RW-R820', 1, 1, N'Black', 500, 375, 158.5346, 357.0600, NULL, NULL, N'G  ', CAST(890.00 AS Decimal(8, 2)), 1, N'R ', N'H ', NULL, 17, 78, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'8f262a37-43aa-4ad5-ae1f-8bd6967d8e9b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(829, N'Touring Rear Wheel', N'RW-T905', 1, 1, N'Black', 500, 375, 108.7844, 245.0100, NULL, NULL, NULL, NULL, 1, N'T ', NULL, NULL, 17, 43, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'30d2254d-e26d-4586-b4c5-e8ccb8a059b8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(830, N'ML Mountain Frame - Black, 40', N'FR-M63B-40', 1, 1, N'Black', 500, 375, 185.8193, 348.7600, N'40', N'CM ', N'LB ', CAST(2.77 AS Decimal(8, 2)), 1, N'M ', N'M ', N'U ', 12, 14, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'aed1c9c4-c139-45d2-b38e-0a0a9f518665', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(831, N'ML Mountain Frame - Black, 44', N'FR-M63B-44', 1, 1, N'Black', 500, 375, 185.8193, 348.7600, N'44', N'CM ', N'LB ', CAST(2.81 AS Decimal(8, 2)), 1, N'M ', N'M ', N'U ', 12, 14, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'3f2135d4-ec5f-4e30-bde8-5444518f0637', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(832, N'ML Mountain Frame - Black, 48', N'FR-M63B-48', 1, 1, N'Black', 500, 375, 185.8193, 348.7600, N'48', N'CM ', N'LB ', CAST(2.85 AS Decimal(8, 2)), 1, N'M ', N'M ', N'U ', 12, 14, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'c2009b69-f15a-47ec-b710-1809d299318a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(833, N'ML Road Frame-W - Yellow, 40', N'FR-R72Y-40', 1, 1, N'Yellow', 500, 375, 360.9428, 594.8300, N'40', N'CM ', N'LB ', CAST(2.22 AS Decimal(8, 2)), 1, N'R ', N'M ', N'W ', 14, 17, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'22df26f2-60bc-493e-a14a-5500633e9f7e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(834, N'ML Road Frame-W - Yellow, 42', N'FR-R72Y-42', 1, 1, N'Yellow', 500, 375, 360.9428, 594.8300, N'42', N'CM ', N'LB ', CAST(2.26 AS Decimal(8, 2)), 1, N'R ', N'M ', N'W ', 14, 17, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'207b54da-5404-415d-8578-9a45082e3bf1', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(835, N'ML Road Frame-W - Yellow, 44', N'FR-R72Y-44', 1, 1, N'Yellow', 500, 375, 360.9428, 594.8300, N'44', N'CM ', N'LB ', CAST(2.30 AS Decimal(8, 2)), 1, N'R ', N'M ', N'W ', 14, 17, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'a0fad492-ac24-4fcf-8d2a-d21d06386ae1', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(836, N'ML Road Frame-W - Yellow, 48', N'FR-R72Y-48', 1, 1, N'Yellow', 500, 375, 360.9428, 594.8300, N'48', N'CM ', N'LB ', CAST(2.34 AS Decimal(8, 2)), 1, N'R ', N'M ', N'W ', 14, 17, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'8487bfe0-2138-471e-9c6d-fdb3a67e7d86', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(837, N'HL Road Frame - Black, 62', N'FR-R92B-62', 1, 1, N'Black', 500, 375, 868.6342, 1431.5000, N'62', N'CM ', N'LB ', CAST(2.30 AS Decimal(8, 2)), 1, N'R ', N'H ', N'U ', 14, 6, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'5dce9c8c-fb94-46f8-b826-11658f6a3682', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(838, N'HL Road Frame - Black, 44', N'FR-R92B-44', 1, 1, N'Black', 500, 375, 868.6342, 1431.5000, N'44', N'CM ', N'LB ', CAST(2.12 AS Decimal(8, 2)), 1, N'R ', N'H ', N'U ', 14, 6, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'e4902656-a4bc-4b08-9d47-4f3da0fd76c3', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(839, N'HL Road Frame - Black, 48', N'FR-R92B-48', 1, 1, N'Black', 500, 375, 868.6342, 1431.5000, N'48', N'CM ', N'LB ', CAST(2.16 AS Decimal(8, 2)), 1, N'R ', N'H ', N'U ', 14, 6, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'557b603b-407b-41a4-ae34-4f7747866dba', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(840, N'HL Road Frame - Black, 52', N'FR-R92B-52', 1, 1, N'Black', 500, 375, 868.6342, 1431.5000, N'52', N'CM ', N'LB ', CAST(2.20 AS Decimal(8, 2)), 1, N'R ', N'H ', N'U ', 14, 6, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'0ed082b3-fbba-43af-9149-8741b9fc78c8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(841, N'Men''s Sports Shorts, S', N'SH-M897-S', 0, 1, N'Black', 4, 3, 24.7459, 59.9900, N'S', NULL, NULL, NULL, 0, N'S ', NULL, N'M ', 22, 13, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'34b08c1f-99d1-43c4-8ef7-2cd754b6665d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(842, N'Touring-Panniers, Large', N'PA-T100', 0, 1, N'Grey', 4, 3, 51.5625, 125.0000, NULL, NULL, NULL, NULL, 0, N'T ', NULL, NULL, 35, 120, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'56334fff-91d4-495e-bf98-933bc1010f23', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(843, N'Cable Lock', N'LO-C100', 0, 1, NULL, 4, 3, 10.3125, 25.0000, NULL, NULL, NULL, NULL, 0, N'S ', NULL, NULL, 34, 115, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'56ffd7b9-1014-4640-b1bd-b2649589b4d7', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(844, N'Minipump', N'PU-0452', 0, 1, NULL, 4, 3, 8.2459, 19.9900, NULL, NULL, NULL, NULL, 0, N'S ', NULL, NULL, 36, 116, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'aaf7a076-9ee3-46bf-a69f-414d847e858b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(845, N'Mountain Pump', N'PU-M044', 0, 1, NULL, 4, 3, 10.3084, 24.9900, NULL, NULL, NULL, NULL, 0, N'M ', NULL, NULL, 36, 117, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'57169f80-fafb-4678-8f51-fe1f131d0c83', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(846, N'Taillights - Battery-Powered', N'LT-T990', 0, 1, NULL, 4, 3, 5.7709, 13.9900, NULL, NULL, NULL, NULL, 0, N'R ', NULL, NULL, 33, 108, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'3c617b87-50a5-434c-a0d3-22314b7027ee', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(847, N'Headlights - Dual-Beam', N'LT-H902', 0, 1, NULL, 4, 3, 14.4334, 34.9900, NULL, NULL, NULL, NULL, 0, N'R ', NULL, NULL, 33, 109, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'417db6cb-f38f-4b0d-87e7-e1ebf7456c3a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(848, N'Headlights - Weatherproof', N'LT-H903', 0, 1, NULL, 4, 3, 18.5584, 44.9900, NULL, NULL, NULL, NULL, 0, N'R ', NULL, NULL, 33, 110, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'fc362c1a-4b9c-4d5f-a6d3-0775846c61f0', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(849, N'Men''s Sports Shorts, M', N'SH-M897-M', 0, 1, N'Black', 4, 3, 24.7459, 59.9900, N'M', NULL, NULL, NULL, 0, N'S ', NULL, N'M ', 22, 13, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'db37b435-74b9-43d3-b363-abbead107bc4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(850, N'Men''s Sports Shorts, L', N'SH-M897-L', 0, 1, N'Black', 4, 3, 24.7459, 59.9900, N'L', NULL, NULL, NULL, 0, N'S ', NULL, N'M ', 22, 13, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'714184c5-669b-4cf1-a802-30e7b1ea7722', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(851, N'Men''s Sports Shorts, XL', N'SH-M897-X', 0, 1, N'Black', 4, 3, 24.7459, 59.9900, N'XL', NULL, NULL, NULL, 0, N'S ', NULL, N'M ', 22, 13, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'bd3ffe40-fe2e-44cb-a4e0-81786c3a751f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(852, N'Women''s Tights, S', N'TG-W091-S', 0, 1, N'Black', 4, 3, 30.9334, 74.9900, N'S', NULL, NULL, NULL, 0, N'S ', NULL, N'W ', 24, 38, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'7de86c98-4f5b-4155-8572-c977f14ebaeb', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(853, N'Women''s Tights, M', N'TG-W091-M', 0, 1, N'Black', 4, 3, 30.9334, 74.9900, N'M', NULL, NULL, NULL, 0, N'S ', NULL, N'W ', 24, 38, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'4d8e186c-b8c9-4c64-b411-4995dd87e316', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(854, N'Women''s Tights, L', N'TG-W091-L', 0, 1, N'Black', 4, 3, 30.9334, 74.9900, N'L', NULL, NULL, NULL, 0, N'S ', NULL, N'W ', 24, 38, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'e378c2f3-54f6-4ea9-b049-e8bb32b5bdfd', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(855, N'Men''s Bib-Shorts, S', N'SB-M891-S', 0, 1, N'Multi', 4, 3, 37.1209, 89.9900, N'S', NULL, NULL, NULL, 0, N'S ', NULL, N'M ', 18, 12, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'9f60af1e-4c11-4e90-baea-48e834e8b4c2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(856, N'Men''s Bib-Shorts, M', N'SB-M891-M', 0, 1, N'Multi', 4, 3, 37.1209, 89.9900, N'M', NULL, NULL, NULL, 0, N'S ', NULL, N'M ', 18, 12, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'e0cbec04-f4fc-450f-9780-f8ea7691febd', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(857, N'Men''s Bib-Shorts, L', N'SB-M891-L', 0, 1, N'Multi', 4, 3, 37.1209, 89.9900, N'L', NULL, NULL, NULL, 0, N'S ', NULL, N'M ', 18, 12, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'e1df75a4-9986-489e-a5de-ad3da824eb5e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(858, N'Half-Finger Gloves, S', N'GL-H102-S', 0, 1, N'Black', 4, 3, 9.1593, 24.4900, N'S', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 20, 4, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'9e1db5c3-539d-4061-9433-d762dc195cd8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(859, N'Half-Finger Gloves, M', N'GL-H102-M', 0, 1, N'Black', 4, 3, 9.1593, 24.4900, N'M', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 20, 4, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'9d458fd5-392d-4ab1-afef-6a5548e48858', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(860, N'Half-Finger Gloves, L', N'GL-H102-L', 0, 1, N'Black', 4, 3, 9.1593, 24.4900, N'L', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 20, 4, CAST(N'2012-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'fa710215-925f-4959-81df-538e72a6a255', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(861, N'Full-Finger Gloves, S', N'GL-F110-S', 0, 1, N'Black', 4, 3, 15.6709, 37.9900, N'S', NULL, NULL, NULL, 0, N'M ', NULL, N'U ', 20, 3, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'76fac097-1fb3-456b-8fb9-2c7a613771b4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(862, N'Full-Finger Gloves, M', N'GL-F110-M', 0, 1, N'Black', 4, 3, 15.6709, 37.9900, N'M', NULL, NULL, NULL, 0, N'M ', NULL, N'U ', 20, 3, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'1084221e-1890-443e-9d87-afcad6358355', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(863, N'Full-Finger Gloves, L', N'GL-F110-L', 0, 1, N'Black', 4, 3, 15.6709, 37.9900, N'L', NULL, NULL, NULL, 0, N'M ', NULL, N'U ', 20, 3, CAST(N'2012-05-30T00:00:00.000' AS DateTime), CAST(N'2013-05-29T00:00:00.000' AS DateTime), NULL, N'6116f9d4-8a1d-4022-a642-9c445c197203', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(864, N'Classic Vest, S', N'VE-C304-S', 0, 1, N'Blue', 4, 3, 23.7490, 63.5000, N'S', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 25, 1, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'eb423ef3-409d-46fe-b35b-d69970820314', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(865, N'Classic Vest, M', N'VE-C304-M', 0, 1, N'Blue', 4, 3, 23.7490, 63.5000, N'M', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 25, 1, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'2e52f96e-64a1-4069-911c-e3fd6e094a1e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(866, N'Classic Vest, L', N'VE-C304-L', 0, 1, N'Blue', 4, 3, 23.7490, 63.5000, N'L', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 25, 1, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'3211f5a8-b6c4-48bd-9aa4-d69cb40d97dd', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(867, N'Women''s Mountain Shorts, S', N'SH-W890-S', 0, 1, N'Black', 4, 3, 26.1763, 69.9900, N'S', NULL, NULL, NULL, 0, N'M ', NULL, N'W ', 22, 37, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'22616fd2-b99f-4f7d-acf6-33dff66d42d2', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(868, N'Women''s Mountain Shorts, M', N'SH-W890-M', 0, 1, N'Black', 4, 3, 26.1763, 69.9900, N'M', NULL, NULL, NULL, 0, N'M ', NULL, N'W ', 22, 37, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'968e3610-e583-42e8-8ab6-484a799b1774', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(869, N'Women''s Mountain Shorts, L', N'SH-W890-L', 0, 1, N'Black', 4, 3, 26.1763, 69.9900, N'L', NULL, NULL, NULL, 0, N'M ', NULL, N'W ', 22, 37, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'1a66b244-5ca0-4153-b539-ae048d14faec', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(870, N'Water Bottle - 30 oz.', N'WB-H098', 0, 1, NULL, 4, 3, 1.8663, 4.9900, NULL, NULL, NULL, NULL, 0, N'S ', NULL, NULL, 28, 111, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'834e8d1a-69a7-4c42-8b68-fa08d9ec9e5b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(871, N'Mountain Bottle Cage', N'BC-M005', 0, 1, NULL, 4, 3, 3.7363, 9.9900, NULL, NULL, NULL, NULL, 0, N'M ', NULL, NULL, 28, 112, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'684491de-63f8-4632-90e3-36773c4e63bd', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(872, N'Road Bottle Cage', N'BC-R205', 0, 1, NULL, 4, 3, 3.3623, 8.9900, NULL, NULL, NULL, NULL, 0, N'R ', NULL, NULL, 28, 113, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'601b1fe8-d4d0-4cfb-9379-29481cc05291', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(873, N'Patch Kit/8 Patches', N'PK-7098', 0, 1, NULL, 4, 3, 0.8565, 2.2900, NULL, NULL, NULL, NULL, 0, N'S ', NULL, NULL, 37, 114, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'36e638e4-68df-411b-930a-daad57221aa6', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(874, N'Racing Socks, M', N'SO-R809-M', 0, 1, N'White', 4, 3, 3.3623, 8.9900, N'M', NULL, NULL, NULL, 0, N'R ', NULL, N'U ', 23, 24, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'b9c7eb0a-1dd1-4a1d-b4c3-1dad83a8ea7e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(875, N'Racing Socks, L', N'SO-R809-L', 0, 1, N'White', 4, 3, 3.3623, 8.9900, N'L', NULL, NULL, NULL, 0, N'R ', NULL, N'U ', 23, 24, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'c0a16305-74b7-4fae-b5c9-3e8bd0e44762', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(876, N'Hitch Rack - 4-Bike', N'RA-H123', 0, 1, NULL, 4, 3, 44.8800, 120.0000, NULL, NULL, NULL, NULL, 0, N'S ', NULL, NULL, 26, 118, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'7a0c4bbd-9679-4f59-9ebc-9daf3439a38a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(877, N'Bike Wash - Dissolver', N'CL-9009', 0, 1, NULL, 4, 3, 2.9733, 7.9500, NULL, NULL, NULL, NULL, 0, N'S ', NULL, NULL, 29, 119, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'3c40b5ad-e328-4715-88a7-ec3220f02acf', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(878, N'Fender Set - Mountain', N'FE-6654', 0, 1, NULL, 4, 3, 8.2205, 21.9800, NULL, NULL, NULL, NULL, 0, N'M ', NULL, NULL, 30, 121, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'e6e76c7f-c145-4cad-a9e8-b1e4e845a2c0', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(879, N'All-Purpose Bike Stand', N'ST-1401', 0, 1, NULL, 4, 3, 59.4660, 159.0000, NULL, NULL, NULL, NULL, 0, N'M ', NULL, NULL, 27, 122, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'c7bb564b-a637-40f5-b21b-cbf7e4f713be', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(880, N'Hydration Pack - 70 oz.', N'HY-1023-70', 0, 1, N'Silver', 4, 3, 20.5663, 54.9900, N'70', NULL, NULL, NULL, 0, N'S ', NULL, NULL, 32, 107, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'a99d90c0-05e2-4e44-ad90-c55c9f0784de', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(881, N'Short-Sleeve Classic Jersey, S', N'SJ-0194-S', 0, 1, N'Yellow', 4, 3, 41.5723, 53.9900, N'S', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 21, 32, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'05b2e20f-2399-4cb3-9b49-b28d6649c104', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(882, N'Short-Sleeve Classic Jersey, M', N'SJ-0194-M', 0, 1, N'Yellow', 4, 3, 41.5723, 53.9900, N'M', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 21, 32, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'bbbf003b-367d-4d71-af71-10f50b6234a0', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(883, N'Short-Sleeve Classic Jersey, L', N'SJ-0194-L', 0, 1, N'Yellow', 4, 3, 41.5723, 53.9900, N'L', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 21, 32, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'2d9f59b8-9f24-46eb-98ad-553e48bb9db9', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(884, N'Short-Sleeve Classic Jersey, XL', N'SJ-0194-X', 0, 1, N'Yellow', 4, 3, 41.5723, 53.9900, N'XL', NULL, NULL, NULL, 0, N'S ', NULL, N'U ', 21, 32, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'906d42f6-c21f-4d20-b528-02ffdb55fd1e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(885, N'HL Touring Frame - Yellow, 60', N'FR-T98Y-60', 1, 1, N'Yellow', 500, 375, 601.7437, 1003.9100, N'60', N'CM ', N'LB ', CAST(3.08 AS Decimal(8, 2)), 1, N'T ', N'H ', N'U ', 16, 7, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'c49679bd-96a9-4176-a7ed-5bc6d6444647', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(886, N'LL Touring Frame - Yellow, 62', N'FR-T67Y-62', 1, 1, N'Yellow', 500, 375, 199.8519, 333.4200, N'62', N'CM ', N'LB ', CAST(3.20 AS Decimal(8, 2)), 1, N'T ', N'L ', N'U ', 16, 10, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'8d4d52a6-8abc-4c05-be4d-c067faf1a64e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(887, N'HL Touring Frame - Yellow, 46', N'FR-T98Y-46', 1, 1, N'Yellow', 500, 375, 601.7437, 1003.9100, N'46', N'CM ', N'LB ', CAST(2.96 AS Decimal(8, 2)), 1, N'T ', N'H ', N'U ', 16, 7, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'137675a7-34cd-4b7a-abe1-4e0eeb79b65d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(888, N'HL Touring Frame - Yellow, 50', N'FR-T98Y-50', 1, 1, N'Yellow', 500, 375, 601.7437, 1003.9100, N'50', N'CM ', N'LB ', CAST(3.00 AS Decimal(8, 2)), 1, N'T ', N'H ', N'U ', 16, 7, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'105ec6e5-30c5-4fe3-a08b-cb324c85323d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(889, N'HL Touring Frame - Yellow, 54', N'FR-T98Y-54', 1, 1, N'Yellow', 500, 375, 601.7437, 1003.9100, N'54', N'CM ', N'LB ', CAST(3.04 AS Decimal(8, 2)), 1, N'T ', N'H ', N'U ', 16, 7, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'12b1f317-c39b-48d0-b1a7-8018c60aea53', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(890, N'HL Touring Frame - Blue, 46', N'FR-T98U-46', 1, 1, N'Blue', 500, 375, 601.7437, 1003.9100, N'46', N'CM ', N'LB ', CAST(2.96 AS Decimal(8, 2)), 1, N'T ', N'H ', N'U ', 16, 7, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'8bbd3437-a58b-41a0-9503-fc14b23e7678', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(891, N'HL Touring Frame - Blue, 50', N'FR-T98U-50', 1, 1, N'Blue', 500, 375, 601.7437, 1003.9100, N'50', N'CM ', N'LB ', CAST(3.00 AS Decimal(8, 2)), 1, N'T ', N'H ', N'U ', 16, 7, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'c4244f0c-abce-451b-a895-83c0e6d1f448', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(892, N'HL Touring Frame - Blue, 54', N'FR-T98U-54', 1, 1, N'Blue', 500, 375, 601.7437, 1003.9100, N'54', N'CM ', N'LB ', CAST(3.04 AS Decimal(8, 2)), 1, N'T ', N'H ', N'U ', 16, 7, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'e9aae947-6bc3-4909-8937-3e1cdcec8a8f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(893, N'HL Touring Frame - Blue, 60', N'FR-T98U-60', 1, 1, N'Blue', 500, 375, 601.7437, 1003.9100, N'60', N'CM ', N'LB ', CAST(3.08 AS Decimal(8, 2)), 1, N'T ', N'H ', N'U ', 16, 7, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'b01951a4-a581-4d10-9dc2-515da180f1b8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(894, N'Rear Derailleur', N'RD-2308', 1, 1, N'Silver', 500, 375, 53.9282, 121.4600, NULL, NULL, N'G  ', CAST(215.00 AS Decimal(8, 2)), 1, NULL, NULL, NULL, 9, 127, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'5ebfcf02-4e3e-443a-ad60-5aeef28dac76', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
GO
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(895, N'LL Touring Frame - Blue, 50', N'FR-T67U-50', 1, 1, N'Blue', 500, 375, 199.8519, 333.4200, N'50', N'CM ', N'LB ', CAST(3.10 AS Decimal(8, 2)), 1, N'T ', N'L ', N'U ', 16, 10, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'b78eccca-fa88-4071-9110-410585127e46', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(896, N'LL Touring Frame - Blue, 54', N'FR-T67U-54', 1, 1, N'Blue', 500, 375, 199.8519, 333.4200, N'54', N'CM ', N'LB ', CAST(3.14 AS Decimal(8, 2)), 1, N'T ', N'L ', N'U ', 16, 10, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'0ff799c9-dd11-4b81-aaf7-65410017405b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(897, N'LL Touring Frame - Blue, 58', N'FR-T67U-58', 1, 1, N'Blue', 500, 375, 199.8519, 333.4200, N'58', N'CM ', N'LB ', CAST(3.16 AS Decimal(8, 2)), 1, N'T ', N'L ', N'U ', 16, 10, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'ccd4fa47-7194-4bd0-909b-1fa4bd7916a7', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(898, N'LL Touring Frame - Blue, 62', N'FR-T67U-62', 1, 1, N'Blue', 500, 375, 199.8519, 333.4200, N'62', N'CM ', N'LB ', CAST(3.20 AS Decimal(8, 2)), 1, N'T ', N'L ', N'U ', 16, 10, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'08a211a5-dcd2-42d0-9276-64d92d4890a6', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(899, N'LL Touring Frame - Yellow, 44', N'FR-T67Y-44', 1, 1, N'Yellow', 500, 375, 199.8519, 333.4200, N'44', N'CM ', N'LB ', CAST(3.02 AS Decimal(8, 2)), 1, N'T ', N'L ', N'U ', 16, 10, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'109cb7bc-6ec6-4a36-85c8-55b843b2ab12', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(900, N'LL Touring Frame - Yellow, 50', N'FR-T67Y-50', 1, 1, N'Yellow', 500, 375, 199.8519, 333.4200, N'50', N'CM ', N'LB ', CAST(3.10 AS Decimal(8, 2)), 1, N'T ', N'L ', N'U ', 16, 10, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'285fd682-c647-49d1-b8f3-368a43c9cda0', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(901, N'LL Touring Frame - Yellow, 54', N'FR-T67Y-54', 1, 1, N'Yellow', 500, 375, 199.8519, 333.4200, N'54', N'CM ', N'LB ', CAST(3.14 AS Decimal(8, 2)), 1, N'T ', N'L ', N'U ', 16, 10, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'2536e3b2-d4da-49e6-965a-f612c2c8914f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(902, N'LL Touring Frame - Yellow, 58', N'FR-T67Y-58', 1, 1, N'Yellow', 500, 375, 199.8519, 333.4200, N'58', N'CM ', N'LB ', CAST(3.16 AS Decimal(8, 2)), 1, N'T ', N'L ', N'U ', 16, 10, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'5d17ff1c-f50e-438f-a4e9-7c400fb762e7', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(903, N'LL Touring Frame - Blue, 44', N'FR-T67U-44', 1, 1, N'Blue', 500, 375, 199.8519, 333.4200, N'44', N'CM ', N'LB ', CAST(3.02 AS Decimal(8, 2)), 1, N'T ', N'L ', N'U ', 16, 10, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'e9c17be7-f4dc-465e-ab73-c0198f37bfdd', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(904, N'ML Mountain Frame-W - Silver, 40', N'FR-M63S-40', 1, 1, N'Silver', 500, 375, 199.3757, 364.0900, N'40', N'CM ', N'LB ', CAST(2.77 AS Decimal(8, 2)), 1, N'M ', N'M ', N'W ', 12, 15, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'a7dde43e-f7d5-4075-a0c1-c866ad7aa154', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(905, N'ML Mountain Frame-W - Silver, 42', N'FR-M63S-42', 1, 1, N'Silver', 500, 375, 199.3757, 364.0900, N'42', N'CM ', N'LB ', CAST(2.81 AS Decimal(8, 2)), 1, N'M ', N'M ', N'W ', 12, 15, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'd4a2fcad-1e63-4ebd-863c-5a7c48d5b8d9', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(906, N'ML Mountain Frame-W - Silver, 46', N'FR-M63S-46', 1, 1, N'Silver', 500, 375, 199.3757, 364.0900, N'46', N'CM ', N'LB ', CAST(2.85 AS Decimal(8, 2)), 1, N'M ', N'M ', N'W ', 12, 15, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'82025c63-7b28-412d-92c1-408e0e6ae646', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(907, N'Rear Brakes', N'RB-9231', 0, 1, N'Silver', 500, 375, 47.2860, 106.5000, NULL, NULL, N'G  ', CAST(317.00 AS Decimal(8, 2)), 1, NULL, NULL, NULL, 6, 128, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'5946f163-93f0-4141-b17e-55d9778cc274', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(908, N'LL Mountain Seat/Saddle', N'SE-M236', 0, 1, NULL, 500, 375, 12.0413, 27.1200, NULL, NULL, NULL, NULL, 1, N'M ', N'L ', NULL, 15, 79, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'4dab53c5-31e7-47d6-a5a0-940f8d4dad22', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(909, N'ML Mountain Seat/Saddle', N'SE-M798', 0, 1, NULL, 500, 375, 17.3782, 39.1400, NULL, NULL, NULL, NULL, 1, N'M ', N'M ', NULL, 15, 80, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'30222244-0fd8-4d28-8448-f2e658bf52bd', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(910, N'HL Mountain Seat/Saddle', N'SE-M940', 0, 1, NULL, 500, 375, 23.3722, 52.6400, NULL, NULL, NULL, NULL, 1, N'M ', N'H ', NULL, 15, 81, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'a96a5024-87de-488a-bf81-bc0c81f6cd18', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(911, N'LL Road Seat/Saddle', N'SE-R581', 0, 1, NULL, 500, 375, 12.0413, 27.1200, NULL, NULL, NULL, NULL, 1, N'R ', N'L ', NULL, 15, 82, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'31b9bc62-792b-4e7a-a24d-411dc76e0271', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(912, N'ML Road Seat/Saddle', N'SE-R908', 0, 1, NULL, 500, 375, 17.3782, 39.1400, NULL, NULL, NULL, NULL, 1, N'T ', N'M ', NULL, 15, 83, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'49845afe-a8cc-4354-a5d4-09d35bf7fb9e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(913, N'HL Road Seat/Saddle', N'SE-R995', 0, 1, NULL, 500, 375, 23.3722, 52.6400, NULL, NULL, NULL, NULL, 1, N'R ', N'H ', NULL, 15, 84, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'2befe629-4b2a-41a1-a009-df13ead69105', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(914, N'LL Touring Seat/Saddle', N'SE-T312', 0, 1, NULL, 500, 375, 12.0413, 27.1200, NULL, NULL, NULL, NULL, 1, N'T ', N'L ', NULL, 15, 66, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'7874a1d6-7a5b-412f-a2eb-c2f457b9603d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(915, N'ML Touring Seat/Saddle', N'SE-T762', 0, 1, NULL, 500, 375, 17.3782, 39.1400, NULL, NULL, NULL, NULL, 1, N'T ', N'M ', NULL, 15, 65, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'072acb72-7796-4bd0-9bbb-6efc29ac336c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(916, N'HL Touring Seat/Saddle', N'SE-T924', 0, 1, NULL, 500, 375, 23.3722, 52.6400, NULL, NULL, NULL, NULL, 1, N'T ', N'H ', NULL, 15, 67, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'0e158724-934d-4a64-991f-94fec00bdea8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(917, N'LL Mountain Frame - Silver, 42', N'FR-M21S-42', 1, 1, N'Silver', 500, 375, 144.5938, 264.0500, N'42', N'CM ', N'LB ', CAST(2.92 AS Decimal(8, 2)), 1, N'M ', N'L ', N'U ', 12, 8, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'37bd4d2b-346b-4c6b-8f3f-85c084282529', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(918, N'LL Mountain Frame - Silver, 44', N'FR-M21S-44', 1, 1, N'Silver', 500, 375, 144.5938, 264.0500, N'44', N'CM ', N'LB ', CAST(2.96 AS Decimal(8, 2)), 1, N'M ', N'L ', N'U ', 12, 8, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'393a4d00-7428-41f0-a48a-af26b00e9a9c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(919, N'LL Mountain Frame - Silver, 48', N'FR-M21S-48', 1, 1, N'Silver', 500, 375, 144.5938, 264.0500, N'48', N'CM ', N'LB ', CAST(3.00 AS Decimal(8, 2)), 1, N'M ', N'L ', N'U ', 12, 8, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'8dfef6f2-91a8-4884-8949-b2551218b37a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(920, N'LL Mountain Frame - Silver, 52', N'FR-M21S-52', 1, 1, N'Silver', 500, 375, 144.5938, 264.0500, N'52', N'CM ', N'LB ', CAST(3.04 AS Decimal(8, 2)), 1, N'M ', N'L ', N'U ', 12, 8, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'f230baac-5951-4eb1-b1e8-94c2ca2b37fa', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(921, N'Mountain Tire Tube', N'TT-M928', 0, 1, NULL, 500, 375, 1.8663, 4.9900, NULL, NULL, NULL, NULL, 0, N'M ', NULL, NULL, 37, 92, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'01a8c3fc-ed52-458e-a634-d5b6e2accfed', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(922, N'Road Tire Tube', N'TT-R982', 0, 1, NULL, 500, 375, 1.4923, 3.9900, NULL, NULL, NULL, NULL, 0, N'R ', NULL, NULL, 37, 93, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'ea442bd7-f69b-42d9-aa71-95e10b648f52', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(923, N'Touring Tire Tube', N'TT-T092', 0, 1, NULL, 500, 375, 1.8663, 4.9900, NULL, NULL, NULL, NULL, 0, N'T ', NULL, NULL, 37, 94, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'179fec38-cab5-4a47-bcff-31cfc9e43a3c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(924, N'LL Mountain Frame - Black, 42', N'FR-M21B-42', 1, 1, N'Black', 500, 375, 136.7850, 249.7900, N'42', N'CM ', N'LB ', CAST(2.92 AS Decimal(8, 2)), 1, N'M ', N'L ', N'U ', 12, 8, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'faabd7fb-cb35-4bad-8857-ec71468686ad', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(925, N'LL Mountain Frame - Black, 44', N'FR-M21B-44', 1, 1, N'Black', 500, 375, 136.7850, 249.7900, N'44', N'CM ', N'LB ', CAST(2.96 AS Decimal(8, 2)), 1, N'M ', N'L ', N'U ', 12, 8, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'47ab0300-7b55-4d35-a786-80190976b9b5', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(926, N'LL Mountain Frame - Black, 48', N'FR-M21B-48', 1, 1, N'Black', 500, 375, 136.7850, 249.7900, N'48', N'CM ', N'LB ', CAST(3.00 AS Decimal(8, 2)), 1, N'M ', N'L ', N'U ', 12, 8, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'408435aa-15c0-41e5-981f-32a8226af15f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(927, N'LL Mountain Frame - Black, 52', N'FR-M21B-52', 1, 1, N'Black', 500, 375, 136.7850, 249.7900, N'52', N'CM ', N'LB ', CAST(3.04 AS Decimal(8, 2)), 1, N'M ', N'L ', N'U ', 12, 8, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'4800f4e6-99ea-4afd-a392-2cb05265d0d4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(928, N'LL Mountain Tire', N'TI-M267', 0, 1, NULL, 500, 375, 9.3463, 24.9900, NULL, NULL, NULL, NULL, 0, N'M ', N'L ', NULL, 37, 85, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'76060a93-949c-48ea-9b31-a593d6c14983', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(929, N'ML Mountain Tire', N'TI-M602', 0, 1, NULL, 500, 375, 11.2163, 29.9900, NULL, NULL, NULL, NULL, 0, N'M ', N'M ', NULL, 37, 86, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'daff9e11-6254-432d-8c4f-f06e52687184', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(930, N'HL Mountain Tire', N'TI-M823', 0, 1, NULL, 500, 375, 13.0900, 35.0000, NULL, NULL, NULL, NULL, 0, N'M ', N'H ', NULL, 37, 87, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'ddad25f5-0445-4b5c-8466-6446930ad8b8', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(931, N'LL Road Tire', N'TI-R092', 0, 1, NULL, 500, 375, 8.0373, 21.4900, NULL, NULL, NULL, NULL, 0, N'R ', N'L ', NULL, 37, 88, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'15b569a6-d172-42c2-a420-62ab5946cc80', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(932, N'ML Road Tire', N'TI-R628', 0, 1, NULL, 500, 375, 9.3463, 24.9900, NULL, NULL, NULL, NULL, 0, N'R ', N'M ', NULL, 37, 89, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'd1016cc5-c12b-4f05-915c-70fa062e4a64', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(933, N'HL Road Tire', N'TI-R982', 0, 1, NULL, 500, 375, 12.1924, 32.6000, NULL, NULL, NULL, NULL, 0, N'R ', N'H ', NULL, 37, 90, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'c86de56a-5048-4b89-b7c7-56bc75c9bcee', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(934, N'Touring Tire', N'TI-T723', 0, 1, NULL, 500, 375, 10.8423, 28.9900, NULL, NULL, NULL, NULL, 0, N'T ', NULL, NULL, 37, 91, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'9d5ca300-5302-41e1-bca5-8ce5b93f26a5', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(935, N'LL Mountain Pedal', N'PD-M282', 0, 1, N'Silver/Black', 500, 375, 17.9776, 40.4900, NULL, NULL, N'G  ', CAST(218.00 AS Decimal(8, 2)), 1, N'M ', N'L ', NULL, 13, 62, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'9fdd0c65-b2b0-4c6c-8704-3a9747be5174', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(936, N'ML Mountain Pedal', N'PD-M340', 0, 1, N'Silver/Black', 500, 375, 27.5680, 62.0900, NULL, NULL, N'G  ', CAST(215.00 AS Decimal(8, 2)), 1, N'M ', N'M ', NULL, 13, 63, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'274c86dc-439e-4469-9de8-7e9bd6455d0d', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(937, N'HL Mountain Pedal', N'PD-M562', 0, 1, N'Silver/Black', 500, 375, 35.9596, 80.9900, NULL, NULL, N'G  ', CAST(185.00 AS Decimal(8, 2)), 1, N'M ', N'H ', NULL, 13, 64, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'a05464e8-6b4d-42b3-a4d6-8683136f4b66', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(938, N'LL Road Pedal', N'PD-R347', 0, 1, N'Silver/Black', 500, 375, 17.9776, 40.4900, NULL, NULL, N'G  ', CAST(189.00 AS Decimal(8, 2)), 1, N'R ', N'L ', NULL, 13, 68, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'2c7dd8c3-4c55-475f-ba58-f4baca520d72', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(939, N'ML Road Pedal', N'PD-R563', 0, 1, N'Silver/Black', 500, 375, 27.5680, 62.0900, NULL, NULL, N'G  ', CAST(168.00 AS Decimal(8, 2)), 1, N'R ', N'M ', NULL, 13, 69, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'216ad46f-bc3f-4862-b0e9-2e261e5a6059', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(940, N'HL Road Pedal', N'PD-R853', 0, 1, N'Silver/Black', 500, 375, 35.9596, 80.9900, NULL, NULL, N'G  ', CAST(149.00 AS Decimal(8, 2)), 1, N'R ', N'H ', NULL, 13, 70, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'44e96967-ab99-41ed-8b41-5bc70a5ca1a9', CAST(N'2014-02-08T10:03:55.510' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(941, N'Touring Pedal', N'PD-T852', 0, 1, N'Silver/Black', 500, 375, 35.9596, 80.9900, NULL, NULL, NULL, NULL, 1, N'T ', NULL, NULL, 13, 53, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'6967c816-3ebb-45fa-8547-cef00e08573e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(942, N'ML Mountain Frame-W - Silver, 38', N'FR-M63S-38', 1, 1, N'Silver', 500, 375, 199.3757, 364.0900, N'38', N'CM ', N'LB ', CAST(2.73 AS Decimal(8, 2)), 2, N'M ', N'M ', N'W ', 12, 15, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'ba3646b0-1487-426e-ab4e-57d42e6f9233', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(943, N'LL Mountain Frame - Black, 40', N'FR-M21B-40', 1, 1, N'Black', 500, 375, 136.7850, 249.7900, N'40', N'CM ', N'LB ', CAST(2.88 AS Decimal(8, 2)), 2, N'M ', N'L ', N'U ', 12, 8, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'3050e4df-2bba-4c2b-bdcc-b4c89972db1c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(944, N'LL Mountain Frame - Silver, 40', N'FR-M21S-40', 1, 1, N'Silver', 500, 375, 144.5938, 264.0500, N'40', N'CM ', N'LB ', CAST(2.88 AS Decimal(8, 2)), 2, N'M ', N'L ', N'U ', 12, 8, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'756f862e-40cc-4dfc-b189-716d0dda5ff9', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(945, N'Front Derailleur', N'FD-2342', 1, 1, N'Silver', 500, 375, 40.6216, 91.4900, NULL, NULL, N'G  ', CAST(88.00 AS Decimal(8, 2)), 1, NULL, NULL, NULL, 9, 103, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'448e9e7b-9548-4a4c-abb3-853686aa7517', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(946, N'LL Touring Handlebars', N'HB-T721', 1, 1, NULL, 500, 375, 20.4640, 46.0900, NULL, NULL, NULL, NULL, 1, N'T ', N'L ', NULL, 4, 47, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'a2f1352e-45d0-42c4-aef3-60033073bb66', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(947, N'HL Touring Handlebars', N'HB-T928', 1, 1, NULL, 500, 375, 40.6571, 91.5700, NULL, NULL, NULL, NULL, 1, N'T ', N'H ', NULL, 4, 48, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'cb524e92-4fa8-4f6c-9993-60796856c654', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(948, N'Front Brakes', N'FB-9873', 0, 1, N'Silver', 500, 375, 47.2860, 106.5000, NULL, NULL, N'G  ', CAST(317.00 AS Decimal(8, 2)), 1, NULL, NULL, NULL, 6, 102, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'c1813164-1b4b-42d1-9007-4e5f9aee0e19', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(949, N'LL Crankset', N'CS-4759', 1, 1, N'Black', 500, 375, 77.9176, 175.4900, NULL, NULL, N'G  ', CAST(600.00 AS Decimal(8, 2)), 1, NULL, N'L ', NULL, 8, 99, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'41d47371-4374-46d3-8d61-b07616ec54f0', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(950, N'ML Crankset', N'CS-6583', 1, 1, N'Black', 500, 375, 113.8816, 256.4900, NULL, NULL, N'G  ', CAST(635.00 AS Decimal(8, 2)), 1, NULL, N'M ', NULL, 8, 100, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'd3a7a02c-a3d5-4a04-9454-0c4e43772b78', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(951, N'HL Crankset', N'CS-9183', 1, 1, N'Black', 500, 375, 179.8156, 404.9900, NULL, NULL, N'G  ', CAST(575.00 AS Decimal(8, 2)), 1, NULL, N'H ', NULL, 8, 101, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'2c4a8956-7b72-48fe-b028-699e117b1daa', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(952, N'Chain', N'CH-0234', 0, 1, N'Silver', 500, 375, 8.9866, 20.2400, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 7, 98, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'5d27e2a5-27ec-4ccb-ba2c-fc980ffe6708', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(953, N'Touring-2000 Blue, 60', N'BK-T44U-60', 1, 1, N'Blue', 100, 75, 755.1508, 1214.8500, N'60', N'CM ', N'LB ', CAST(27.90 AS Decimal(8, 2)), 4, N'T ', N'M ', N'U ', 3, 35, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'f1bb3957-8d27-47f3-91ec-c71822d11436', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(954, N'Touring-1000 Yellow, 46', N'BK-T79Y-46', 1, 1, N'Yellow', 100, 75, 1481.9379, 2384.0700, N'46', N'CM ', N'LB ', CAST(25.13 AS Decimal(8, 2)), 4, N'T ', N'H ', N'U ', 3, 34, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'83b77413-8c8a-4af1-93e4-136edb7ff15f', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(955, N'Touring-1000 Yellow, 50', N'BK-T79Y-50', 1, 1, N'Yellow', 100, 75, 1481.9379, 2384.0700, N'50', N'CM ', N'LB ', CAST(25.42 AS Decimal(8, 2)), 4, N'T ', N'H ', N'U ', 3, 34, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'5ec991ad-8761-4a61-a318-312df3a78604', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(956, N'Touring-1000 Yellow, 54', N'BK-T79Y-54', 1, 1, N'Yellow', 100, 75, 1481.9379, 2384.0700, N'54', N'CM ', N'LB ', CAST(25.68 AS Decimal(8, 2)), 4, N'T ', N'H ', N'U ', 3, 34, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'1220b0f0-064d-46b7-8507-1fa758b77b9c', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(957, N'Touring-1000 Yellow, 60', N'BK-T79Y-60', 1, 1, N'Yellow', 100, 75, 1481.9379, 2384.0700, N'60', N'CM ', N'LB ', CAST(25.90 AS Decimal(8, 2)), 4, N'T ', N'H ', N'U ', 3, 34, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'bcd1a5a9-6140-4dc9-9620-689dc7e4c155', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(958, N'Touring-3000 Blue, 54', N'BK-T18U-54', 1, 1, N'Blue', 100, 75, 461.4448, 742.3500, N'54', N'CM ', N'LB ', CAST(29.68 AS Decimal(8, 2)), 4, N'T ', N'L ', N'U ', 3, 36, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'a3ee6897-52fe-42e4-92ec-7a91e7bb905a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(959, N'Touring-3000 Blue, 58', N'BK-T18U-58', 1, 1, N'Blue', 100, 75, 461.4448, 742.3500, N'58', N'CM ', N'LB ', CAST(29.90 AS Decimal(8, 2)), 4, N'T ', N'L ', N'U ', 3, 36, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'23d89cee-9f44-4f3e-b289-63de6ba2b737', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(960, N'Touring-3000 Blue, 62', N'BK-T18U-62', 1, 1, N'Blue', 100, 75, 461.4448, 742.3500, N'62', N'CM ', N'LB ', CAST(30.00 AS Decimal(8, 2)), 4, N'T ', N'L ', N'U ', 3, 36, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'060192c9-bcd9-4260-b729-d6bcfadfb08e', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(961, N'Touring-3000 Yellow, 44', N'BK-T18Y-44', 1, 1, N'Yellow', 100, 75, 461.4448, 742.3500, N'44', N'CM ', N'LB ', CAST(28.77 AS Decimal(8, 2)), 4, N'T ', N'L ', N'U ', 3, 36, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'5646c15a-68ad-4234-b328-254706cbccc5', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(962, N'Touring-3000 Yellow, 50', N'BK-T18Y-50', 1, 1, N'Yellow', 100, 75, 461.4448, 742.3500, N'50', N'CM ', N'LB ', CAST(29.13 AS Decimal(8, 2)), 4, N'T ', N'L ', N'U ', 3, 36, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'df85e805-af87-4fab-a668-c80f2a5b8a69', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(963, N'Touring-3000 Yellow, 54', N'BK-T18Y-54', 1, 1, N'Yellow', 100, 75, 461.4448, 742.3500, N'54', N'CM ', N'LB ', CAST(29.42 AS Decimal(8, 2)), 4, N'T ', N'L ', N'U ', 3, 36, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'192becd1-f465-4194-88a2-ee57fed3a3c5', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(964, N'Touring-3000 Yellow, 58', N'BK-T18Y-58', 1, 1, N'Yellow', 100, 75, 461.4448, 742.3500, N'58', N'CM ', N'LB ', CAST(29.79 AS Decimal(8, 2)), 4, N'T ', N'L ', N'U ', 3, 36, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'bed79f64-a53d-44a3-ace8-2baa425a5a54', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(965, N'Touring-3000 Yellow, 62', N'BK-T18Y-62', 1, 1, N'Yellow', 100, 75, 461.4448, 742.3500, N'62', N'CM ', N'LB ', CAST(30.00 AS Decimal(8, 2)), 4, N'T ', N'L ', N'U ', 3, 36, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'd28b3872-5173-40a4-b12f-655524386cc7', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(966, N'Touring-1000 Blue, 46', N'BK-T79U-46', 1, 1, N'Blue', 100, 75, 1481.9379, 2384.0700, N'46', N'CM ', N'LB ', CAST(25.13 AS Decimal(8, 2)), 4, N'T ', N'H ', N'U ', 3, 34, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'86990d54-6efb-4c53-9974-6c3b0297e222', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(967, N'Touring-1000 Blue, 50', N'BK-T79U-50', 1, 1, N'Blue', 100, 75, 1481.9379, 2384.0700, N'50', N'CM ', N'LB ', CAST(25.42 AS Decimal(8, 2)), 4, N'T ', N'H ', N'U ', 3, 34, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'68c0a818-2985-46eb-8255-0fb70919fa24', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(968, N'Touring-1000 Blue, 54', N'BK-T79U-54', 1, 1, N'Blue', 100, 75, 1481.9379, 2384.0700, N'54', N'CM ', N'LB ', CAST(25.68 AS Decimal(8, 2)), 4, N'T ', N'H ', N'U ', 3, 34, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'12280a8c-7578-4367-ba71-214bcc1e4792', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(969, N'Touring-1000 Blue, 60', N'BK-T79U-60', 1, 1, N'Blue', 100, 75, 1481.9379, 2384.0700, N'60', N'CM ', N'LB ', CAST(25.90 AS Decimal(8, 2)), 4, N'T ', N'H ', N'U ', 3, 34, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'dd70cf36-449a-43fd-839d-a84ee14c849a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(970, N'Touring-2000 Blue, 46', N'BK-T44U-46', 1, 1, N'Blue', 100, 75, 755.1508, 1214.8500, N'46', N'CM ', N'LB ', CAST(27.13 AS Decimal(8, 2)), 4, N'T ', N'M ', N'U ', 3, 35, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'c0009006-715f-4b76-a05a-1a0d3adfb49a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(971, N'Touring-2000 Blue, 50', N'BK-T44U-50', 1, 1, N'Blue', 100, 75, 755.1508, 1214.8500, N'50', N'CM ', N'LB ', CAST(27.42 AS Decimal(8, 2)), 4, N'T ', N'M ', N'U ', 3, 35, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'84abda8f-0007-4bca-9a61-b2dea58866c3', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(972, N'Touring-2000 Blue, 54', N'BK-T44U-54', 1, 1, N'Blue', 100, 75, 755.1508, 1214.8500, N'54', N'CM ', N'LB ', CAST(27.68 AS Decimal(8, 2)), 4, N'T ', N'M ', N'U ', 3, 35, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'6dcfe2a3-3555-44e4-9116-6f6dbe448b8b', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(973, N'Road-350-W Yellow, 40', N'BK-R79Y-40', 1, 1, N'Yellow', 100, 75, 1082.5100, 1700.9900, N'40', N'CM ', N'LB ', CAST(15.35 AS Decimal(8, 2)), 4, N'R ', N'M ', N'W ', 2, 27, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'237b16d9-53f2-4fd4-befe-48209e57aec3', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(974, N'Road-350-W Yellow, 42', N'BK-R79Y-42', 1, 1, N'Yellow', 100, 75, 1082.5100, 1700.9900, N'42', N'CM ', N'LB ', CAST(15.77 AS Decimal(8, 2)), 4, N'R ', N'M ', N'W ', 2, 27, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'80bd3f8b-42c7-43d8-91f5-9fb6175287af', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(975, N'Road-350-W Yellow, 44', N'BK-R79Y-44', 1, 1, N'Yellow', 100, 75, 1082.5100, 1700.9900, N'44', N'CM ', N'LB ', CAST(16.13 AS Decimal(8, 2)), 4, N'R ', N'M ', N'W ', 2, 27, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'0c61e8af-003d-4e4b-b5b7-02f01a26be26', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(976, N'Road-350-W Yellow, 48', N'BK-R79Y-48', 1, 1, N'Yellow', 100, 75, 1082.5100, 1700.9900, N'48', N'CM ', N'LB ', CAST(16.42 AS Decimal(8, 2)), 4, N'R ', N'M ', N'W ', 2, 27, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'ec4284dc-85fa-44a8-89ec-77fc9b71720a', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(977, N'Road-750 Black, 58', N'BK-R19B-58', 1, 1, N'Black', 100, 75, 343.6496, 539.9900, N'58', N'CM ', N'LB ', CAST(20.79 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 31, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'87b81a1a-a5b5-43d2-a20d-0230800490b9', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(978, N'Touring-3000 Blue, 44', N'BK-T18U-44', 1, 1, N'Blue', 100, 75, 461.4448, 742.3500, N'44', N'CM ', N'LB ', CAST(28.77 AS Decimal(8, 2)), 4, N'T ', N'L ', N'U ', 3, 36, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'4f638e15-2ed0-4193-90ce-47da580e01dd', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(979, N'Touring-3000 Blue, 50', N'BK-T18U-50', 1, 1, N'Blue', 100, 75, 461.4448, 742.3500, N'50', N'CM ', N'LB ', CAST(29.13 AS Decimal(8, 2)), 4, N'T ', N'L ', N'U ', 3, 36, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'de305b62-88fc-465b-b23d-d8c0f7e6d361', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(980, N'Mountain-400-W Silver, 38', N'BK-M38S-38', 1, 1, N'Silver', 100, 75, 419.7784, 769.4900, N'38', N'CM ', N'LB ', CAST(26.35 AS Decimal(8, 2)), 4, N'M ', N'M ', N'W ', 1, 22, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'7a927632-99a4-4f24-adce-0062d2d113d9', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(981, N'Mountain-400-W Silver, 40', N'BK-M38S-40', 1, 1, N'Silver', 100, 75, 419.7784, 769.4900, N'40', N'CM ', N'LB ', CAST(26.77 AS Decimal(8, 2)), 4, N'M ', N'M ', N'W ', 1, 22, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'0a72791c-a984-4733-ae4e-2b4373cfd7cd', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(982, N'Mountain-400-W Silver, 42', N'BK-M38S-42', 1, 1, N'Silver', 100, 75, 419.7784, 769.4900, N'42', N'CM ', N'LB ', CAST(27.13 AS Decimal(8, 2)), 4, N'M ', N'M ', N'W ', 1, 22, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'4ea4fe06-aaea-42d4-a9d9-69f6a9a4a042', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(983, N'Mountain-400-W Silver, 46', N'BK-M38S-46', 1, 1, N'Silver', 100, 75, 419.7784, 769.4900, N'46', N'CM ', N'LB ', CAST(27.42 AS Decimal(8, 2)), 4, N'M ', N'M ', N'W ', 1, 22, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'0b0c8ee4-ff2d-438e-9cac-464783b86191', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(984, N'Mountain-500 Silver, 40', N'BK-M18S-40', 1, 1, N'Silver', 100, 75, 308.2179, 564.9900, N'40', N'CM ', N'LB ', CAST(27.35 AS Decimal(8, 2)), 4, N'M ', N'L ', N'U ', 1, 23, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'b96c057b-6416-4851-8d59-bcb37c8e6e51', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(985, N'Mountain-500 Silver, 42', N'BK-M18S-42', 1, 1, N'Silver', 100, 75, 308.2179, 564.9900, N'42', N'CM ', N'LB ', CAST(27.77 AS Decimal(8, 2)), 4, N'M ', N'L ', N'U ', 1, 23, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'b8d1b5d9-8a39-4097-a04a-56e95559b534', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(986, N'Mountain-500 Silver, 44', N'BK-M18S-44', 1, 1, N'Silver', 100, 75, 308.2179, 564.9900, N'44', N'CM ', N'LB ', CAST(28.13 AS Decimal(8, 2)), 4, N'M ', N'L ', N'U ', 1, 23, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'e8cec794-e8e2-4312-96a7-4832e573d3fc', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(987, N'Mountain-500 Silver, 48', N'BK-M18S-48', 1, 1, N'Silver', 100, 75, 308.2179, 564.9900, N'48', N'CM ', N'LB ', CAST(28.42 AS Decimal(8, 2)), 4, N'M ', N'L ', N'U ', 1, 23, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'77ef419f-481f-40b9-bdb9-7e6678e550e3', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(988, N'Mountain-500 Silver, 52', N'BK-M18S-52', 1, 1, N'Silver', 100, 75, 308.2179, 564.9900, N'52', N'CM ', N'LB ', CAST(28.68 AS Decimal(8, 2)), 4, N'M ', N'L ', N'U ', 1, 23, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'cad60945-183e-4ab3-a70c-3f5bac6bf134', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(989, N'Mountain-500 Black, 40', N'BK-M18B-40', 1, 1, N'Black', 100, 75, 294.5797, 539.9900, N'40', N'CM ', N'LB ', CAST(27.35 AS Decimal(8, 2)), 4, N'M ', N'L ', N'U ', 1, 23, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'28287157-3f06-487b-8531-bee8a37329e4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(990, N'Mountain-500 Black, 42', N'BK-M18B-42', 1, 1, N'Black', 100, 75, 294.5797, 539.9900, N'42', N'CM ', N'LB ', CAST(27.77 AS Decimal(8, 2)), 4, N'M ', N'L ', N'U ', 1, 23, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'f5752c9c-56ba-41a7-83fd-139da28c15fa', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(991, N'Mountain-500 Black, 44', N'BK-M18B-44', 1, 1, N'Black', 100, 75, 294.5797, 539.9900, N'44', N'CM ', N'LB ', CAST(28.13 AS Decimal(8, 2)), 4, N'M ', N'L ', N'U ', 1, 23, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'c7852127-2fb8-4959-b5a3-de5a8d6445e4', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(992, N'Mountain-500 Black, 48', N'BK-M18B-48', 1, 1, N'Black', 100, 75, 294.5797, 539.9900, N'48', N'CM ', N'LB ', CAST(28.42 AS Decimal(8, 2)), 4, N'M ', N'L ', N'U ', 1, 23, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'75752e26-a3b6-4264-9b06-f23a4fbdc5a7', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(993, N'Mountain-500 Black, 52', N'BK-M18B-52', 1, 1, N'Black', 100, 75, 294.5797, 539.9900, N'52', N'CM ', N'LB ', CAST(28.68 AS Decimal(8, 2)), 4, N'M ', N'L ', N'U ', 1, 23, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'69ee3b55-e142-4e4f-aed8-af02978fbe87', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(994, N'LL Bottom Bracket', N'BB-7421', 1, 1, NULL, 500, 375, 23.9716, 53.9900, NULL, NULL, N'G  ', CAST(223.00 AS Decimal(8, 2)), 1, NULL, N'L ', NULL, 5, 95, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'fa3c65cd-0a22-47e3-bdf6-53f1dc138c43', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
GO
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(995, N'ML Bottom Bracket', N'BB-8107', 1, 1, NULL, 500, 375, 44.9506, 101.2400, NULL, NULL, N'G  ', CAST(168.00 AS Decimal(8, 2)), 1, NULL, N'M ', NULL, 5, 96, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'71ab847f-d091-42d6-b735-7b0c2d82fc84', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(996, N'HL Bottom Bracket', N'BB-9108', 1, 1, NULL, 500, 375, 53.9416, 121.4900, NULL, NULL, N'G  ', CAST(170.00 AS Decimal(8, 2)), 1, NULL, N'H ', NULL, 5, 97, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'230c47c5-08b2-4ce3-b706-69c0bdd62965', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(997, N'Road-750 Black, 44', N'BK-R19B-44', 1, 1, N'Black', 100, 75, 343.6496, 539.9900, N'44', N'CM ', N'LB ', CAST(19.77 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 31, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'44ce4802-409f-43ab-9b27-ca53421805be', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(998, N'Road-750 Black, 48', N'BK-R19B-48', 1, 1, N'Black', 100, 75, 343.6496, 539.9900, N'48', N'CM ', N'LB ', CAST(20.13 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 31, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'3de9a212-1d49-40b6-b10a-f564d981dbde', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
INSERT [Production].[Product]
	([ProductID], [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size], [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [rowguid], [ModifiedDate])
VALUES
	(999, N'Road-750 Black, 52', N'BK-R19B-52', 1, 1, N'Black', 100, 75, 343.6496, 539.9900, N'52', N'CM ', N'LB ', CAST(20.42 AS Decimal(8, 2)), 4, N'R ', N'L ', N'U ', 2, 31, CAST(N'2013-05-30T00:00:00.000' AS DateTime), NULL, NULL, N'ae638923-2b67-4679-b90e-abbab17dca31', CAST(N'2014-02-08T10:01:36.827' AS DateTime))
SET IDENTITY_INSERT [Production].[Product] OFF
GO

SET IDENTITY_INSERT [Production].[ProductSubcategory] ON
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(1, 1, N'Mountain Bikes', N'2d364ade-264a-433c-b092-4fcbf3804e01', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(2, 1, N'Road Bikes', N'000310c0-bcc8-42c4-b0c3-45ae611af06b', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(3, 1, N'Touring Bikes', N'02c5061d-ecdc-4274-b5f1-e91d76bc3f37', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(4, 2, N'Handlebars', N'3ef2c725-7135-4c85-9ae6-ae9a3bdd9283', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(5, 2, N'Bottom Brackets', N'a9e54089-8a1e-4cf5-8646-e3801f685934', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(6, 2, N'Brakes', N'd43ba4a3-ef0d-426b-90eb-4be4547dd30c', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(7, 2, N'Chains', N'e93a7231-f16c-4b0f-8c41-c73fdec62da0', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(8, 2, N'Cranksets', N'4f644521-422b-4f19-974a-e3df6102567e', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(9, 2, N'Derailleurs', N'1830d70c-aa2a-40c0-a271-5ba86f38f8bf', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(10, 2, N'Forks', N'b5f9ba42-b69b-4fdd-b2ec-57fb7b42e3cf', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(11, 2, N'Headsets', N'7c782bbe-5a16-495a-aa50-10afe5a84af2', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(12, 2, N'Mountain Frames', N'61b21b65-e16a-4be7-9300-4d8e9db861be', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(13, 2, N'Pedals', N'6d24ac07-7a84-4849-864a-865a14125bc9', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(14, 2, N'Road Frames', N'5515f857-075b-4f9a-87b7-43b4997077b3', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(15, 2, N'Saddles', N'049fffa3-9d30-46df-82f7-f20730ec02b3', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(16, 2, N'Touring Frames', N'd2e3f1a8-56c4-4f36-b29d-5659fc0d2789', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(17, 2, N'Wheels', N'43521287-4b0b-438e-b80e-d82d9ad7c9f0', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(18, 3, N'Bib-Shorts', N'67b58d2b-5798-4a90-8c6c-5ddacf057171', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(19, 3, N'Caps', N'430dd6a8-a755-4b23-bb05-52520107da5f', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(20, 3, N'Gloves', N'92d5657b-0032-4e49-bad5-41a441a70942', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(21, 3, N'Jerseys', N'09e91437-ba4f-4b1a-8215-74184fd95db8', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(22, 3, N'Shorts', N'1a5ba5b3-03c3-457c-b11e-4fa85ede87da', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(23, 3, N'Socks', N'701019c3-09fe-4949-8386-c6ce686474e5', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(24, 3, N'Tights', N'5deb3e55-9897-4416-b18a-515e970bc2d1', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(25, 3, N'Vests', N'9ad7fe93-5ba0-4736-b578-ff80a2071297', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(26, 4, N'Bike Racks', N'4624b5ce-66d6-496b-9201-c053df3556cc', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(27, 4, N'Bike Stands', N'43b445c8-b820-424e-a1d5-90d81da0b46f', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(28, 4, N'Bottles and Cages', N'9b7dff41-9fa3-4776-8def-2c9a48c8b779', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(29, 4, N'Cleaners', N'9ad3bcf0-244d-4ec4-a6a0-fb701351c6a3', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(30, 4, N'Fenders', N'1697f8a2-0a08-4883-b7dd-d19117b4e9a7', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(31, 4, N'Helmets', N'f5e07a33-c9e0-439c-b5f3-9f25fb65becc', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(32, 4, N'Hydration Packs', N'646a8906-fc87-4267-a443-9c6d791e6693', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(33, 4, N'Lights', N'954178ba-624f-42db-95f6-ca035f36d130', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(34, 4, N'Locks', N'19646983-3fa0-4773-9a0c-f34c49df9bc8', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(35, 4, N'Panniers', N'3002a5d5-fec3-464b-bef3-e0f81d35f431', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(36, 4, N'Pumps', N'fe4d46f2-c87c-48c5-a4a1-3f55712d80b1', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Production].[ProductSubcategory]
	([ProductSubcategoryID], [ProductCategoryID], [Name], [rowguid], [ModifiedDate])
VALUES
	(37, 4, N'Tires and Tubes', N'3c17c9ae-e906-48b4-bdd3-60e28d47dcdf', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [Production].[ProductSubcategory] OFF
GO
