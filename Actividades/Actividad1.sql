USE AdventureWorks2022;
GO
--Ejercicio 1: Obtener los productos con un precio mayor a 1000
--Instrucción: Muestra los nombres de los productos cuyo precio unitario es mayor a 1000, de la tabla Production.Product.
SELECT Name 
FROM Production.Product 
WHERE ListPrice > 1000

--Ejercicio 2: Listar los códigos postales que empiezan con '98'
--Instrucción: Muestra todos los códigos postales de la tabla Person.Address que comiencen con '98'.
SELECT PostalCode 
FROM Person.Address
WHERE PostalCode LIKE '98%';

--Ejercicio 3: Contar cuántos productos tienen un tamaño específico
--Instrucción: Cuenta cuántos productos tienen un tamaño específico (por ejemplo, "M") en la tabla Production.Product
SELECT * 
FROM  Production.Product
WHERE Size LIKE 'M'

--Ejercicio 4: Obtener la venta total más alta
--Instrucción: Encuentra la venta más alta (por monto total) registrada en la tabla Sales.SalesOrderHeader.
SELECT MAX(TotalDue)
AS venta_mas_alta  
FROM Sales.SalesOrderHeader 
  
--Ejercicio 5: Contar cuántos productos tienen stock
--Instrucción: Muestra cuántos productos tienen un StockLevel mayor a 0 en la tabla Production.Product.
SELECT COUNT(*) AS total_stock
FROM Production.Product
WHERE SafetyStockLevel > 0;

--Ejercicio 6: Productos más vendidos
--Instrucción: Obtén los 5 productos más vendidos según la cantidad.
--Pista: Usa las tablas Sales.SalesOrderDetail (detalles de las órdenes de venta) y Production.Product (productos).
SELECT TOP 5 
    p.Name AS nombre_producto, 
    SUM(sod.OrderQty) AS total_vendido
FROM Sales.SalesOrderDetail sod
INNER JOIN Production.Product p ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY total_vendido DESC;

--Ejercicio 7: Obtener el total de ventas por cada cliente
--Instrucción: Calcula el total de ventas (por cliente).
--Pista: Usa las tablas Sales.SalesOrderHeader (encabezados de órdenes de venta) y Sales.Customer (clientes).
SELECT 
    sc.CustomerID, 
    COUNT(soh.SalesOrderID) AS total_ventas, 
    SUM(soh.TotalDue) AS monto_total_ventas
FROM Sales.SalesOrderHeader soh
INNER JOIN Sales.Customer sc ON soh.CustomerID = sc.CustomerID
GROUP BY sc.CustomerID
ORDER BY total_ventas DESC;
