/*
	Instituto Tecnológico Superior de San Pedro de Las Colonias
	Nairobi Alejandra García Valadez
	Actividad 1 
	8 "C"
	19 de febrero de 2025
	20 de febrero de 2025
*/
USE AdventureWorks2022
GO

/*Ejercicio 1: Obtener los productos con un precio mayor a 1000
Instrucción: Muestra los nombres de los productos cuyo precio unitario es mayor a 1000, de la tabla Production.Product.*/
SELECT Name
FROM Production.Product
WHERE ListPrice > 1000

/*Ejercicio 2: Listar los códigos postales que empiezan con '98'
Instrucción: Muestra todos los códigos postales de la tabla Person.Address que comiencen con '98'.*/
SELECT PostalCode
FROM Person.Address
WHERE PostalCode LIKE '98%'

/*Ejercicio 3: Contar cuántos productos tienen un tamaño específico
Instrucción: Cuenta cuántos productos tienen un tamaño específico (por ejemplo, "M") en la tabla Production.Product.*/
SELECT COUNT(*)
FROM Production.Product
WHERE Size = 'M'

/*Ejercicio 4: Obtener la venta total más alta
Instrucción: Encuentra la venta más alta (por monto total) registrada en la tabla Sales.SalesOrderHeader.*/
SELECT TOP 1 SalesOrderID, TotalDue 
FROM Sales.SalesOrderHeader 
ORDER BY TotalDue DESC

/*Ejercicio 5: Contar cuántos productos tienen stock
Instrucción: Muestra cuántos productos tienen un StockLevel mayor a 0 en la tabla Production.Product.*/
SELECT COUNT(*) 
AS Productos_En_Stock 
FROM Production.Product 
WHERE SafetyStockLevel > 0

/*Ejercicio 6: Productos más vendidos
Instrucción: Obtén los 5 productos más vendidos según la cantidad.*/
SELECT TOP 5 p.Name, SUM(sod.OrderQty) 
AS TotalVendidos
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p 
ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY TotalVendidos DESC

/*Ejercicio 7: Obtener el total de ventas por cada cliente
Instrucción: Calcula el total de ventas (por cliente).*/
SELECT c.CustomerID, SUM(soh.TotalDue) 
AS TotalVentas
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c 
ON soh.CustomerID = c.CustomerID
GROUP BY c.CustomerID
ORDER BY TotalVentas DESC
