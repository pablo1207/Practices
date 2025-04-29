--EZEQUIEL SANDOVAL MARTINEZ 8C
--Ejercicio 1: Obtener los productos con un precio mayor a 1000
------------------------------------------------
SELECT Name, ListPrice 
FROM Production.Product
WHERE ListPrice > 1000;

--Ejercicio 2: Listar los códigos postales que empiezan con '98'

SELECT PostalCode 
FROM Person.Address
WHERE PostalCode LIKE '98%';

--Ejercicio 3: Contar cuántos productos tienen un tamaño específico

SELECT COUNT(*) AS TotalProductos
FROM Production.Product
WHERE Size = 'M';

--Ejercicio 4: Obtener la venta total más alta

SELECT MAX(TotalDue) AS VentaMasAlta
FROM Sales.SalesOrderHeader;

--Ejercicio 5: Contar cuántos productos tienen stock

SELECT COUNT(*) AS ProductosEnStock
FROM Production.Product
WHERE SafetyStockLevel > 0;

--Ejercicio 6: Productos más vendidos

SELECT TOP 5 p.Name, SUM(sod.OrderQty) AS CantidadVendida
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY CantidadVendida DESC;


--Ejercicio 7: Obtener el total de ventas por cada cliente

SELECT soh.CustomerID, SUM(soh.TotalDue) AS TotalVentas
FROM Sales.SalesOrderHeader soh
GROUP BY soh.CustomerID
ORDER BY TotalVentas DESC;

