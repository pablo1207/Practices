USE AdventureWorks2022;

--Ejercicio 1
SELECT Name,ListPrice FROM Production.Product 
    WHERE ListPrice>1000;

--Ejercicio 2
SELECT * FROM Person.Address 
    WHERE PostalCode LIKE '98%';

--Ejercicio 3
SELECT COUNT(*) FROM Production.Product
    WHERE Size 'M';

--Ejercicio 4
SELECT MAX(TotalDue) FROM Sales.SalesOrderHeader;

--Ejercicio 5
SELECT * FROM Production.Product  WHERE SafetyStockLevel>0;

--Ejercicio 6
SELECT TOP 5 p.Name AS Producto, SUM(sod.OrderQty) AS [Cantidad Vendida] FROM Sales.SalesOrderDetail sod
    JOIN Production.Product p ON sod.ProductID = p.ProductID
    GROUP BY p.Name
    ORDER BY [Cantidad Vendida] DESC;

--Ejercicio 7
SELECT 
    c.BusinessEntityID AS [ID Cliente], CONCAT(c.FirstName, ' ', c.LastName) AS Cliente, SUM(soh.TotalDue) AS [Total Ventas]
    FROM Sales.SalesOrderHeader soh
        JOIN Sales.Customer sc ON soh.CustomerID = sc.CustomerID
        JOIN Person.Person c ON sc.PersonID = c.BusinessEntityID
        GROUP BY c.BusinessEntityID, c.FirstName, c.LastName
        ORDER BY [Total Ventas]DESC;