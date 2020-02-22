SELECT dbo.DimCustomer.FirstName, dbo.DimCustomer.LastName, dbo.DimCustomer.Gender, dbo.DimCustomer.TotalChildren, dbo.DimDate.DateKey, dbo.DimDate.DayNumberOfMonth, dbo.DimDate.EnglishMonthName, dbo.DimDate.CalendarQuarter, dbo.DimDate.CalendarYear, dbo.DimDate.CalendarSemester, dbo.DimProduct.Color, 
            dbo.DimProduct.EnglishProductName, dbo.DimProductSubcategory.EnglishProductSubcategoryName, dbo.DimProductCategory.EnglishProductCategoryName, dbo.FactInternetSales.OrderQuantity, dbo.FactInternetSales.UnitPrice, dbo.FactInternetSales.TotalProductCost, dbo.FactInternetSales.SalesAmount, dbo.FactInternetSales.TaxAmt, 
            dbo.FactInternetSales.OrderDate, dbo.FactInternetSales.ShipDate
FROM    dbo.DimDate INNER JOIN
            dbo.DimCustomer INNER JOIN
            dbo.DimProductSubcategory INNER JOIN
            dbo.DimProduct ON dbo.DimProductSubcategory.ProductSubcategoryKey = dbo.DimProduct.ProductSubcategoryKey INNER JOIN
            dbo.DimProductCategory ON dbo.DimProductSubcategory.ProductCategoryKey = dbo.DimProductCategory.ProductCategoryKey INNER JOIN
            dbo.FactInternetSales ON dbo.DimProduct.ProductKey = dbo.FactInternetSales.ProductKey ON dbo.DimCustomer.CustomerKey = dbo.FactInternetSales.CustomerKey ON dbo.DimDate.DateKey = dbo.FactInternetSales.OrderDateKey 