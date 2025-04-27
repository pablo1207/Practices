--Ejercicio 1: Obtener los productos con un precio mayor a 1000
SELECT Name
FROM Production.Product
WHERE ListPrice > 1000

--Ejercicio 2: Listar los codigos postales que empiezan con '98'
SELECT PostalCode
FROM Person.Address
WHERE PostalCode LIKE '98%'

--Ejercicio 3: Contar cuantos productos tienen un tama�o espec�fico
SELECT COUNT(*) AS Cantidad_Productos
FROM Production.Product
WHERE Size = 'G'

--Ejercicio 4: obtener la venta total mas alta
SELECT TOP 1 SalesOrderID, TotalDue
FROM Sales.SalesOrderHeader
ORDER BY TotalDue DESC

--Ejercio 5: Contar cuántos productos tienen stock
SELECT COUNT(*) AS Productos_Con_Stock
FROM Production.Product
WHERE SafetyStockLevel > 0

--Ejercicio 6: Obtener los 5 productos más vendidos según la cantidad
SELECT TOP 5 
    p.ProductID, 
    p.Name, 
    SUM(sod.OrderQty) AS Cantidad_Vendida
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p ON sod.ProductID = p.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY Cantidad_Vendida DESC

--Ejercicio 7: Obtener el total de ventas por cada cliente
SELECT c.CustomerID, 
       SUM(soh.TotalDue) AS Total_Ventas
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
GROUP BY c.CustomerID
ORDER BY Total_Ventas DESC



